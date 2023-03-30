import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resala/shared/cache/storage.dart';
import 'package:resala/shared/localization/trans.dart';
import 'package:resala/shared/theme/colors.dart';
import 'package:resala/views/auth/login/login_view.dart';
import 'package:resala/views/auth/register/register_view.dart';
import 'package:resala/views/widgets/custom_button.dart';
import 'package:get/get.dart';

class KNotLoggedInWidget extends StatelessWidget {
  final Widget child;

  const KNotLoggedInWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (KStorage.i.getUserInfo?.user?.email != null) {
      return child;
    } else {
      return const SizedBox();
    }
  }
}

class KNotLoggedInView extends StatelessWidget {
  final Widget child;

  const KNotLoggedInView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (KStorage.i.getUserInfo?.user?.email != null) {
      return child;
    } else {
      return SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Get.height * .1),
            SvgPicture.asset('assets/images/Login Logo.svg'),
            Text(
              "Tr.get.not_loggedin",
              style: TextStyle(
                color: KColors.of(context).accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: Get.height * .05),
            SvgPicture.asset('assets/images/oops.svg'),
            SizedBox(height: Get.height * .07),
            KButton(
              title: Tr.get.login,
              onPressed: () {
                Get.to(() =>  LoginView());
              },
              hieght: Get.height * 0.05,
              width: Get.width * .7,
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Get.to(() => const RegisterView());
                },
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: Tr.get.dont_have_acc, style: const TextStyle(color: Colors.grey)),
                      TextSpan(
                        text: Tr.get.register,
                        style: TextStyle(color: KColors.of(context).accentColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
