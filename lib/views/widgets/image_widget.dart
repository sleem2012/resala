import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:resala/shared/theme/helper.dart';

import '../../views/widgets/shimmer_box.dart';
import 'svg_caching.dart';

class KImageWidget extends StatelessWidget {
  const KImageWidget({Key? key, required this.imageUrl, this.width, this.height, this.color, this.placeHolder, this.errorBuilder, this.fit, this.overrideColor = true})
      : super(key: key);
  final String imageUrl;
  final double? width;
  final double? height;
  final Color? color;
  final BoxFit? fit;
  final Widget? placeHolder;
  final Widget? errorBuilder;
  final bool overrideColor;

  @override
  Widget build(BuildContext context) {
    return imageUrl.endsWith('.svg')
        ? CachedSvgImage(
            url: imageUrl,
            color: color,
            height: height,
            fit: fit,
            width: width,
            overrideColor: overrideColor,
            placeHolder: ShimmerBox(height: height, width: width),
            errorBuilder: KImageWidget(imageUrl: dummyNetImg),
          )
        : CachedNetworkImage(
            imageUrl: imageUrl,
            height: height,
            color: color,
            fit: fit,
            placeholder: (context, url) {
              return ShimmerBox(height: height, width: width);
            },
            errorWidget: (context, url, error) {
              return KImageWidget(imageUrl: dummyNetImg);
            },
        imageBuilder:
            (BuildContext context, ImageProvider imageProvider) =>
                Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(KHelper.btnRadius),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.fill,
            ),
          ),
        ),
            width: width,
          );
  }
}
