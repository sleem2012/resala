import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:resala/shared/cache/storage.dart';
import 'package:resala/shared/constant.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/appbar.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(
        title: "",
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: KHelper.hPadding),
        child: Column(
          children: [
            SizedBox(
              height: KHelper.listPadding,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "جمعية رسالة",
                style: KTextStyle.of(context).title,
              ),
            ),
            SizedBox(
              height: KHelper.listPadding,
            ),
            CachedNetworkImage(imageUrl: KStorage.i.getSetting?.data?.info?.aboutImage??''),
            SizedBox(
              height: KHelper.listPadding,
            ),
             Text(Constant.aboutDesc,style: KTextStyle.of(context).body,),
            SizedBox(
              height: KHelper.listPadding,
            ),
          ],
        ),
      ),
    );
  }
}
