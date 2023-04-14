import 'package:flutter/widgets.dart';

class CardItemsModel {
  String image;
  String title;
  String desc;
  String btnTitle;
  Widget screen;
  String? date;
  int? amount;

  CardItemsModel({
    required this.image,
    required this.btnTitle,
    required this.title,
    required this.desc,
    required this.screen,
    this.amount,
    this.date,
  });
}
