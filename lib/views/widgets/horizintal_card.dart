import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:resala/data/models/general/card_items_model.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/custom_button.dart';

class HorizontalCard extends StatelessWidget {
  final CardItemsModel model;

  const HorizontalCard({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: KHelper.of(context).elevatedBox,
      margin: EdgeInsets.symmetric(horizontal: KHelper.hPadding,vertical: 8),
      child: LayoutBuilder(builder: (context, size) {
        return Row(
          children: [
            SizedBox(
              width: size.maxWidth * .3,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(KHelper.btnRadius),
                  child: Image.asset(
                    model.image,
                  )),
            ),
            const SizedBox(
              width: 16,
            ),
            SizedBox(
              width: size.maxWidth * .7 - 16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    model.title,
                    style: KTextStyle.of(context).subtitle,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          model.desc,
                          style: KTextStyle.of(context).body,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: KButton(
                      title: model.btnTitle,
                      onPressed: () {},
                      //width: Get.width * .3,
                      hieght: Get.height * .04,
                      isFlat: true,
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
