import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/theme/colors.dart';
import '../../shared/theme/text_theme.dart';

class KButton extends StatelessWidget {
  const KButton({super.key, required this.title, required this.onPressed, this.width, this.hieght, this.isLoading = false, this.kFillColor, this.icon, this.isFlat = false});

  final String title;
  final bool? isLoading;
  final Color? kFillColor;
  final Function() onPressed;
  final double? width, hieght;
  final IconData? icon;
  final bool isFlat;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ?? false ? null : onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(0.0),
        backgroundColor: Colors.transparent,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))),
      ),
      child: Ink(
        decoration: !isFlat
            ? const BoxDecoration(
                gradient: LinearGradient(
                  colors: [KColors.accentColorL, KColors.primary],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(15), topLeft: Radius.circular(15)),
              )
            : BoxDecoration(
                color: kFillColor??KColors.of(context).primary,
                borderRadius: BorderRadius.circular(4),
              ),
        child: Container(
          width: width ?? Get.width / 1.1,
          height: hieght ?? Get.height *.064,
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
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (icon != null) Icon(icon, size: 22),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      title,
                      style: KTextStyle.of(context).btnTitle,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
