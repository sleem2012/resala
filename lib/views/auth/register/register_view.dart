import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:resala/shared/localization/trans.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/auth/login/login_view.dart';
import 'package:resala/views/widgets/text_field.dart';

import '../../widgets/custom_button.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: KHelper.hPadding).copyWith(top: 90),
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
            ),
            SizedBox(height: KHelper.listPadding),
            KTextFormField(
              hintText: Tr.get.password,
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: const Icon(Icons.visibility_off),
            ),
            SizedBox(height: KHelper.listPadding),
            KTextFormField(
              hintText: Tr.get.email,
              prefixIcon: const Icon(Icons.lock),
            ),
            SizedBox(height: KHelper.listPadding),
            KTextFormField(
              hintText: Tr.get.phone,
              prefixIcon: const Icon(Icons.lock),
            ),
            SizedBox(height: KHelper.listPadding),
            const KTextFormField(
              hintText: "العنوان",
              prefixIcon: Icon(Icons.lock),
            ),
            SizedBox(height: KHelper.listPadding),

            const SizedBox(height: 34),
            KButton(
              title: Tr.get.register,
              onPressed: () {},
            ),
            const SizedBox(height: 80),
            GestureDetector(
              onTap: () {
                ///TODO
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
    );
  }
}
