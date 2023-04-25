import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:resala/di.dart';
import 'package:resala/logic/register/register_bloc.dart';
import 'package:resala/logic/register/register_state.dart';
import 'package:resala/shared/constant.dart';
import 'package:resala/shared/localization/trans.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/auth/login/login_view.dart';
import 'package:resala/views/widgets/text_field.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/loading/loading_overlay.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: BlocProvider(
        create: (context) => Di.register,
        child: BlocConsumer<RegisterBloc, RegisterState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () async {
                KHelper.showSnackBar("تم التسجيل بنجاح", isTop: true);
                Get.offAll(() => const LoginView());
              },
            );
          },
          builder: (context, state) {
            final register = RegisterBloc.of(context);
            return KLoadingOverlay(
              isLoading: state is RegisterStateLoading,
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: KHelper.hPadding).copyWith(top: 90),
                child: Form(
                  key:_formKey ,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        Constant.logo,
                        // fit: BoxFit.fitHeight,

                      ),
                      Text(
                        "متعـــــــــــة العطــــــــاء",
                        style: KTextStyle.of(context).logo,
                      ),
                      const SizedBox(height: 25),
                      KTextFormField(
                        hintText: Tr.get.full_name,
                        prefixIcon: const Icon(Icons.person),
                        controller: register.nameController,
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return "أدخل الإسم";

                          }
                          return null;
                        },
                      ),
                      SizedBox(height: KHelper.listPadding),
                      KTextFormField(
                        hintText: "اسم الحساب",
                        prefixIcon: const Icon(Icons.account_circle_outlined),
                        controller: register.userNameController,
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return "أدخل اسم الحساب";

                          }
                          return null;
                        },
                      ),
                      SizedBox(height: KHelper.listPadding),
                      KTextFormField(
                        hintText: Tr.get.email,
                        prefixIcon: const Icon(Icons.email),
                        controller: register.emailController,

                      ),
                      SizedBox(height: KHelper.listPadding),
                      KTextFormField(
                        hintText: Tr.get.phone,
                        prefixIcon: const Icon(Icons.phone),
                        controller: register.phoneController,
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return "أدخل رقم الموبايل";

                          }
                          return null;
                        },
                      ),
                      SizedBox(height: KHelper.listPadding),
                      KTextFormField(
                        hintText: Tr.get.password,
                        obscureText: register.isVisible,
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: register.isVisible ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                          onPressed: () {
                            register.togglePassV();
                          },
                        ),
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return "أدخل كلمة المرور";

                          }
                          return null;
                        },
                        controller: register.passController,
                      ),
                      SizedBox(height: KHelper.listPadding),
                      const SizedBox(height: 34),
                      KButton(
                        title: Tr.get.register,
                        onPressed: () {
                          if(_formKey.currentState!.validate()){
                            register.register();
                          }
                        },
                      ),
                      const SizedBox(height: 80),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const LoginView());
                        },
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: Tr.get.already_have_an_account + ' ', style: KTextStyle.of(context).body2),
                              TextSpan(
                                text: Tr.get.login,
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
