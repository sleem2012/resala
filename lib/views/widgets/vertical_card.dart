import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resala/data/models/general/common_data_model.dart';
import 'package:resala/shared/theme/colors.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/custom_button.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({
    super.key,
    required this.model, required this.onPressed,
  });

  final CommonData model;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: KHelper.of(context).elevatedBox,
      width: Get.width * .7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Get.height * .17,
            child: CachedNetworkImage(
              imageUrl: model.image ?? dummyNetImg,
              imageBuilder: (BuildContext context, ImageProvider imageProvider) => Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(KHelper.btnRadius),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              placeholder: (BuildContext context, String url) => const CircularProgressIndicator(),
              errorWidget: (BuildContext context, String url, dynamic error) => const Icon(Icons.error),
            ),
          ),

          // const SizedBox(
          //   height: 6,
          // ),
          Text(
            model.title ?? '',
            style: KTextStyle.of(context).subtitle,
          ),
          // const SizedBox(
          //   height: 4,
          // ),
          Expanded(
            child: Text(
              (model.description ?? ''),
              style: KTextStyle.of(context).body,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          ),
          if (model.totalCost != null) ...[
            Align(
              child: LinearProgressIndicator(
                value: ((model.totalCost ?? 0.0) - (model.reamainingCost ?? 0.0)) / (model.totalCost ?? 0.0),
                color: KColors.of(context).accentColor,
                backgroundColor: KColors.of(context).background,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "الهدف: ${model.totalCost}",
                  style: KTextStyle.of(context).boldBody,
                ),
                Text(
                  "باقي: ${model.reamainingCost}",
                  style: KTextStyle.of(context).smallTitle,
                ),
              ],
            ),
          ],
          Expanded(
            child: KButton(
              title: "أضف تبرع",
              onPressed: onPressed,
              icon: Icons.credit_card,
            ),
          )
        ],
      ),
    );
  }
}
