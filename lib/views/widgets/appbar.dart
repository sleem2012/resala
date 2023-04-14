import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:resala/shared/cache/storage.dart';
import 'package:resala/shared/constant.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/views/about/about_us_screen.dart';
import 'package:resala/views/auth/login/login_view.dart';
import 'package:resala/views/main_screen/main_screen.dart';
import '../../shared/theme/text_theme.dart';

class KAppBar extends StatelessWidget implements PreferredSizeWidget {
  const KAppBar({Key? key, this.title = '', this.isMainScreen = false}) : super(key: key);
  final String title;
  final bool isMainScreen;

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'appBar',
      child: AppBar(
        title: Text(
          title,
          style: KTextStyle.of(context).title,
        ),
        centerTitle: true,
        // titleTextStyle: KTextStyle.of(context).appBar,

        leading: InkWell(
          onTap: () {
            Get.to(() => const AboutUsScreen());

          },
          child: Image.asset(
            Constant.logo,
            fit: BoxFit.fill,

          ),
        ),
        leadingWidth: 100,
        automaticallyImplyLeading: true,
        elevation: .5,
        actions: [
          if (isMainScreen)
            IconButton(
                onPressed: () {
                  if (KStorage.i.getToken != null) {
                    KStorage.i.delToken;
                    Get.offAll(() => const MainNavPages());
                  } else {
                    Get.to(() => const LoginView());
                  }
                },
                icon: Icon(KStorage.i.getToken != null ? Icons.logout : Icons.login_outlined),)
        ],
      ),
    );
  }
}
