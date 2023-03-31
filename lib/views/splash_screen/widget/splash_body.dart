import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/image/Resala Logo.svg'),

          ],
        ),
      ),
    );
  }
}