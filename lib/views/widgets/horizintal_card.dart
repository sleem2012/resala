import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';

import 'custom_button.dart';

class HorizontalCard extends StatelessWidget {
  final dynamic model;
  final bool hasBtn;
  final Function()? onPressed;

  const HorizontalCard({
    super.key,
    required this.model,
     this.onPressed, required this.hasBtn,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: KHelper.of(context).elevatedBox,
      margin: EdgeInsets.symmetric(horizontal: KHelper.hPadding, vertical: 10),
      padding:  const EdgeInsets.symmetric( vertical: 5),
      child: LayoutBuilder(builder: (context, size) {
        return Row(
          children: [
            SizedBox(
              width: size.maxWidth * .3,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(KHelper.btnRadius),
                  child: CachedNetworkImage(
                    imageUrl: model?.image ?? dummyNetImg,
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
                    model?.title ?? ' ',
                    style: KTextStyle.of(context).subtitle,
                  ),
                  Text(
                    model?.desc ?? '',
                    style: KTextStyle.of(context).body,
                    textAlign: TextAlign.center,
                  ),
                  if (model?.date != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "تاريخ التبرع : ",
                          style: KTextStyle.of(context).subtitle,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          model?.date?.substring(0, 10) ?? '',
                          style: KTextStyle.of(context).body,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  if (model?.amount != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "قيمة التبرع : ",
                          style: KTextStyle.of(context).subtitle,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "${model?.amount.toString()} ج ",
                          style: KTextStyle.of(context).body,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),

                if(hasBtn)  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: KButton(
                      title: model?.btnTitle ?? '',
                      onPressed: onPressed!,

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
