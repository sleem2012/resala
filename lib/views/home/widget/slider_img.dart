import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliderImage extends StatelessWidget {
  const SliderImage({Key? key, required this.img}) : super(key: key);
  final List<String> img;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: kDebugMode ? false : true,
              pauseAutoPlayOnTouch: true,
              viewportFraction: .9,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              enlargeCenterPage: false,
              autoPlayInterval: const Duration(seconds: 4),
              aspectRatio: 2,
              pauseAutoPlayInFiniteScroll: true,
            ),
            items: img
                .map((e) => Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () {
                            // Nav.of(context).to(KPhotoView(image: e.s256px??''));
                          },
                          child: Image.asset(
                            e,
                            fit: BoxFit.fill,
                            width: Get.height,

                            // imageUrl: e ,
                          ),
                        ),
                      ),
                ))
                .toList()),
      ),
    );
  }
}
