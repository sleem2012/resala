import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/custom_button.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: KHelper.of(context).elevatedBox,
      width: Get.width * .7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Get.height * .17,
            child: CachedNetworkImage(
              imageUrl: dummyNetImg,
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

          const SizedBox(
            height: 6,
          ),
          Text(
            "حالة انسانية عاجلة",
            style: KTextStyle.of(context).subtitle,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            "كلنا في الشتاء بنحتاج لأكلة جميلة وبطانية تدفينا؟ بس غيرنا كتير مش لاقيهم وبيعانوا بسبب برد الشتاء",
            style: KTextStyle.of(context).body,
            softWrap: true,
          ),
          const SizedBox(
            height: 10,
          ),
          KButton(
            title: "أضف تبرع",
            onPressed: () {},
            icon: Icons.credit_card,
          )
        ],
      ),
    );
  }
}
