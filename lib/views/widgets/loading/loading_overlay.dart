import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resala/shared/theme/colors.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:get/get.dart';
import 'package:resala/views/widgets/error/error_widget.dart';

class KLoadingOverlay extends StatelessWidget {
  final Widget? child;
  final bool isLoading;
  const KLoadingOverlay({Key? key, this.child, this.isLoading = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          child ?? SizedBox(width: Get.width, height: Get.height),
          if (isLoading)
            Positioned(
              top: 0,
              width: Get.width,
              height: Get.height,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(KHelper.btnRadius),
                  ),
                ),
              ),
            ),
          if (isLoading)
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      backgroundColor: KColors.of(context).accentColor,
                      // valueColor: An,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/image/Resala Logo.svg',
                    height: 60,
                    width: 60,
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}




class KRequestOverlay extends StatelessWidget {
  final Widget? child;
  final bool isLoading;
  final String? error;
  final void Function()? onTryAgain;
  const KRequestOverlay({Key? key, this.child,required this.isLoading , this.error, this.onTryAgain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          child ?? SizedBox(width: Get.width, height: Get.height),
          if (isLoading)
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0),
              child: Center(
                child: Container(
                  color: Colors.transparent,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          backgroundColor: KColors.of(context).accentColor,
                        ),
                      ),
                      SvgPicture.asset('assets/image/Resala Logo.svg', height: 60, width: 60)
                    ],
                  ),
                ),
              ),
            ),
          if (error != null) KErrorWidget(error: error, onTryAgain: onTryAgain)


        ],
      ),
    );
  }
}
