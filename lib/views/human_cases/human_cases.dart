import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/vertical_card.dart';
import 'package:resala/views/widgets/custom_button.dart';

class HumanCasesList extends StatelessWidget {
  const HumanCasesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * .45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: KHelper.hPadding),
            child: Text(
              "حالات إنسانية",
              style: KTextStyle.of(context).title,
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: KHelper.hPadding),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return const VerticalCard(
                  key: ValueKey("7"),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: KHelper.listPadding,
                );
              },
              itemCount: 6,
            ),
          )
        ],
      ),
    );
  }
}
