import 'package:flutter/material.dart';
import 'package:resala/shared/cache/storage.dart';
import 'package:resala/shared/theme/colors.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
    //    Text(
    //   " من نحن ",
    //   style: KTextStyle.of(context).title,
    // ),
        Text(
          "العنوان : ${KStorage.i.getSetting?.data?.info?.address ?? ''}",
          style: KTextStyle.of(context).body,
          textAlign: TextAlign.center,
        ),
        Text(
          "رقم التواصل: ${KStorage.i.getSetting?.data?.info?.phone1 ?? ''} - ${KStorage.i.getSetting?.data?.info?.phone2 ?? ''} ",
          style: KTextStyle.of(context).body,
          textAlign: TextAlign.center,

        ),
        SizedBox(height: KHelper.listPadding),
        Row(
          children: [
            Expanded(
              child: KButton(
                title: "Whatsapp",
                onPressed: () async {
                  String? url = KStorage.i.getSetting?.data?.info?.whats.toString();
                  // print(url);
                  await launchUrlString("https://wa.me/$url" ,mode: LaunchMode.externalNonBrowserApplication);
                },
                isFlat: true,
                kFillColor: const Color(0xff2ABA52),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: KButton(
                title: "Facebook",
                onPressed: () async {
                  String? url = KStorage.i.getSetting?.data?.info?.facebook.toString();
                  await launchUrlString(
                    url ?? '',
                  );
                },
                isFlat: true,
                kFillColor: KColors.of(context).accentColor,
              ),
            ),
          ],
        ),

      ],
    );
  }
}
