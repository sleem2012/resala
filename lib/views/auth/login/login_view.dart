import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:resala/di.dart';
import 'package:resala/logic/login/login_bloc.dart';
import 'package:resala/logic/login/login_state.dart';
import 'package:resala/shared/localization/trans.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/main_screen/main_screen.dart';
import 'package:resala/views/widgets/loading/loading_overlay.dart';
import 'package:resala/views/widgets/text_field.dart';

import '../../widgets/custom_button.dart';
import '../register/register_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: BlocProvider(
        create: (context) => Di.login,
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (userModel) async {
                // await Di.reset(context);
                Get.offAll(() => const MainNavPages());
              },
            );
          },
          builder: (context, state) {
            final login = LoginBloc.of(context);
            return KLoadingOverlay(
              isLoading: state is LoginStateLoading,
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: KHelper.hPadding).copyWith(top: 200),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/image/Resala Logo.svg"),
                      const SizedBox(height: 18),
                      Text(
                        "متعـــــــــــة العطــــــــاء",
                        style: KTextStyle.of(context).logo,
                      ),
                      const SizedBox(height: 44),
                      KTextFormField(
                        hintText: Tr.get.full_name,
                        prefixIcon: const Icon(Icons.person),
                        controller: login.userNameController,
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return "أدخل  كلمة السر";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: KHelper.listPadding),
                      KTextFormField(
                        controller: login.passController,
                        hintText: Tr.get.password,
                        obscureText: login.isVisible ,
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return "أدخل الإسم";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,

                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: login.isVisible ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                          onPressed: () {
                            login.togglePassV();
                          },
                        ),
                      ),
                      SizedBox(height: KHelper.listPadding),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            Tr.get.forget_password,
                            style: KTextStyle.of(context).body,
                          )),
                      const SizedBox(height: 34),
                      KButton(
                        title: Tr.get.login,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {

                            FocusManager.instance.primaryFocus?.unfocus();
                            login.login();
                          }
                        },
                      ),
                      const SizedBox(height: 140),
                      GestureDetector(
                        onTap: () {
                          ///TODO
                          Get.to(() => const RegisterView());
                        },
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: Tr.get.dont_have_acc + ' ', style: KTextStyle.of(context).body2),
                              TextSpan(
                                text: Tr.get.create_account,
                                style: KTextStyle.of(context).title,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
