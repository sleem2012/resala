import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resala/shared/localization/trans.dart';
import 'package:resala/shared/theme/colors.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/text_field.dart';

import '../../widgets/custom_button.dart';
import '../register/register_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Tr.get.login, style: KTextStyle.of(context).appBar),
        centerTitle: true,
        leading: RawMaterialButton(
          onPressed: () {},
          child: Icon(Icons.arrow_back_ios_new_rounded, color: KColors.of(context).icons),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: KHelper.hPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  KTextFormField(
                    hintText: Tr.get.full_name,
                  ),
                  const SizedBox(height: 10),
                  KTextFormField(
                    hintText: Tr.get.phone,
                  ),
                  const SizedBox(height: 20),
                  Text(Tr.get.forget_password, style: KTextStyle.of(context).body2),
                  const SizedBox(height: 20),
                  KButton(
                    title: Tr.get.login,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      ///TODO
                      Get.to(() => const RegisterLanding());
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: Tr.get.dont_have_acc + ' ', style: KTextStyle.of(context).body2),
                          TextSpan(
                            text: Tr.get.create_account,
                            style: KTextStyle.of(context).body3,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
