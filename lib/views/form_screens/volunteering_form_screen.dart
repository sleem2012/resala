
import 'package:flutter/material.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/appbar.dart';
import 'package:resala/views/widgets/custom_button.dart';

import 'package:resala/views/widgets/dynamic_card.dart';

class VolunteeringFormScreen extends StatelessWidget {
  const VolunteeringFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      "مندوب",
      "عامل",
    ];
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
                "استمارة التطوع",
                style: KTextStyle.of(context).title,
              ),
            ),
            SizedBox(
              height: KHelper.listPadding,
            ),
            Image.asset("assets/image/voulnter_rectangle.png"),
            SizedBox(
              height: KHelper.listPadding,
            ),
            Row(
              children: [
                const Expanded(
                  child: DynamicCard(title: "العمر", type: FieldTypes.textFiled,),
                ),
                SizedBox(
                  width: KHelper.listPadding,
                ),
                const Expanded(
                  child: DynamicCard(title: "الكلية", type: FieldTypes.textFiled),
                ),
              ],
            ),
            SizedBox(
              width: KHelper.listPadding,
            ),
            DynamicCard(title: "النشاط", type: FieldTypes.dropDown,dropDownList: list),
            const SizedBox(
              height: 40,
            ),
            KButton(
              title: "ارسل الإستمارة",
              onPressed: () {},
              icon: Icons.sticky_note_2_sharp,
            )
          ],
        ),
      ),
    );
  }
}
