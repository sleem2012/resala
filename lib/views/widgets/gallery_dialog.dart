import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resala/shared/theme/colors.dart';
import 'package:resala/shared/theme/helper.dart';

import 'photo_viewer.dart';


class GalleryDialog extends StatelessWidget {
  const GalleryDialog({Key? key, required this.img}) : super(key: key);
  final List<String> img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Material(
          color: KColors.of(context).background,
          child: Container(
            decoration: KHelper.of(context).elevatedBox,
            margin: const EdgeInsets.all(10),
            child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  pauseAutoPlayOnTouch: true,
                  viewportFraction: .9,
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  enlargeCenterPage: false,
                  autoPlayInterval: const Duration(seconds: 2),
                  aspectRatio: 1.5,
                ),
                items: img
                    .map((e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: () {
                                Get.to(()=>KPhotoView(image: e));
                              },
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                width: double.infinity,
                                imageUrl: e,
                              ),
                            ),
                          ),
                        ))
                    .toList()),
          ),
        ),
      ),
    );
  }
}
