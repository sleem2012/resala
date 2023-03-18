import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/theme/colors.dart';
import '../../shared/theme/text_theme.dart';

class KButton extends StatelessWidget {
  const KButton({super.key, required this.title, required this.onPressed, this.width, this.hieght, this.isLoading = false, this.kFillColor});

  final String title;
  final bool? isLoading;
  final Color? kFillColor;
  final Function() onPressed;
  final double? width, hieght;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ?? false ? null : onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(0.0), backgroundColor: Colors.transparent,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight:  Radius.circular(15),topLeft: Radius.circular(15))),
      ),
      child: Ink(
        decoration:   const BoxDecoration(
            gradient: LinearGradient(colors: [KColors.linearOne, KColors.accentColorL],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,

            ),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),topLeft: Radius.circular(15))
        ),
        child: Container(
          width: width?? Get.width/1.1,
          height: hieght?? 50,
          alignment: Alignment.center,
          child: isLoading!
              ? FittedBox(
            child: SizedBox(
              height: (hieght ?? 45) - 10,
              child: const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
            ),
          )
              : Text(
            title,
            style: KTextStyle.of(context).btnTitle,
          ),
        ),
      ),
    );
  }
}
