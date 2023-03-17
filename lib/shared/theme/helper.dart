import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';

class KHelper {
  static BuildContext? _context;
  static KHelper? _instance;
  KHelper._internal() {
    _instance = this;
  }
  static KHelper of(BuildContext context) {
    _context = context;
    return _instance ?? KHelper._internal();
  }

  /// Icons data *****************************
  static const IconData person = Icons.person;
  static const IconData phone = Icons.phone_rounded;
  static const IconData home = Icons.home;

  static const double btnRadius = 12.0;
  static const double hPadding = 12.0;

  static ShapeBorder btnShape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(btnRadius));

  BoxDecoration get shimmerBox {
    return BoxDecoration(
      color: KColors.of(_context!).elevatedBox.withOpacity(.2),
      borderRadius: BorderRadius.circular(btnRadius),
    );
  }

  Gradient get shimmerGradient {
    return LinearGradient(
      colors: [
        KColors.of(_context!).shadow.withOpacity(.2),
        KColors.of(_context!).shadow.withOpacity(.5),
      ],
    );
  }

  static showSnackBar(String msg, {bool? isTop}) {
    Get.closeAllSnackbars();
    Get.snackbar(
      '',
      '',
      snackPosition: isTop ?? false ? SnackPosition.TOP : SnackPosition.BOTTOM,
      barBlur: 10.0,
      backgroundColor: Colors.black.withOpacity(.6),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      duration: const Duration(seconds: 3),
      padding: const EdgeInsets.only(bottom: 30, left: 15, right: 15, top: 8),
      forwardAnimationCurve: Curves.decelerate,
      reverseAnimationCurve: Curves.decelerate,
      dismissDirection: DismissDirection.horizontal,
      colorText: Colors.white,
      messageText: Text(msg, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontSize: 15)),
    );
  }
}
