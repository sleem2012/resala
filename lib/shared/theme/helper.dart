import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/multi_select_dialog/multi_select_view.dart';

import 'colors.dart';


String get dummyNetImg => "https://www.mogazmasr.com/wp-content/uploads/2020/12/%D8%A7%D8%B3%D8%AA%D9%85%D8%A7%D8%B1%D8%A9-%D8%AC%D9%85%D8%B9%D9%8A%D8%A9-%D8%B1%D8%B3%D8%A7%D9%84%D8%A9-%D8%A7%D9%84%D8%AE%D9%8A%D8%B1%D9%8A%D8%A9-%D9%88%D8%A7%D9%84%D8%AE%D8%AF%D9%85%D8%A7%D8%AA-%D8%A7%D9%84%D8%AA%D9%8A-%D8%AA%D9%82%D8%AF%D9%85%D9%87%D8%A7-%D9%84%D9%85%D8%B3%D8%A7%D8%B9%D8%AF%D8%A9-%D8%A7%D9%84%D9%85%D8%AD%D8%AA%D8%A7%D8%AC%D9%8A%D9%86-550x286.jpg";
String get dummyAssetImg => "assets/image/homeslider.png";

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
  static const IconData calculate = Icons.calculate_outlined;
  static const IconData fingerprint = Icons.local_fire_department_outlined;
  static const IconData home = Icons.home;

  static const double btnRadius = 8.0;
  static  double hPadding = 26;
  static  double listPadding = 15;

  static ShapeBorder btnShape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(btnRadius));

  BoxDecoration get shimmerBox {
    return BoxDecoration(
      color: KColors.of(_context!).elevatedBox.withOpacity(.2),
      borderRadius: BorderRadius.circular(btnRadius),
    );
  }
  BoxDecoration get elevatedBox {
    return BoxDecoration(
      color: KColors.of(_context!).elevatedBox.withOpacity(.6),
      borderRadius: BorderRadius.circular(KHelper.btnRadius),
      border: Border.all(color: KColors.of(_context!).border)
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
  MultiSelectorItem<T> itemView<T>(
      {required String itemText, required T value, Widget? icon}) {
    return MultiSelectorItem<T>(
      value: value,
      searchValue: itemText,
      icon: icon,
      child: Text(
        itemText,
        style: KTextStyle.of(_context!).body,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
