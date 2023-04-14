import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:resala/shared/theme/colors.dart';
import 'package:resala/shared/theme/helper.dart';

import 'appbar.dart';

class KPhotoView extends StatelessWidget {
  final String image;
  const KPhotoView({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(),
      body: Center(
        child: Hero(
          tag: image,
          child: PhotoView(
            imageProvider: CachedNetworkImageProvider(image),

            tightMode: true,
            backgroundDecoration: BoxDecoration(color: KColors.of(context).background),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        backgroundColor: KColors.of(context).primary,
        child: const Icon(Icons.arrow_forward, size: 10, color: Colors.white),
        onPressed: () {
          Get.back();
        },
      ),
    );
  }
}
