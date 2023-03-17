import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/theme/colors.dart';
import '../../shared/theme/helper.dart';
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
    return SizedBox(
      width: width ?? Get.width,
      height: hieght ?? 48,
      child: RawMaterialButton(
        onPressed: isLoading ?? false ? null : onPressed,
        fillColor: kFillColor ?? KColors.of(context).accentColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(KHelper.btnRadius)),
        elevation: 0,
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
    );
  }
}
