import 'package:flutter/material.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/appbar.dart';
import 'package:resala/views/widgets/custom_button.dart';

import 'package:resala/views/widgets/dynamic_card.dart';

class MandopScreen extends StatelessWidget {
  const MandopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      "عيني",
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
                "طلب مندوب تحصيل",
                style: KTextStyle.of(context).title,
              ),
            ),
            SizedBox(
              height: KHelper.listPadding,
            ),
            Image.asset("assets/image/mandop_rect.png"),
            SizedBox(
              height: KHelper.listPadding,
            ),
            Row(
              children: [
                const Expanded(
                  child: DynamicCard(title: "قيمة المبلغ", type: FieldTypes.textFiled,showSuffix: true,),
                ),
                SizedBox(
                  width: KHelper.listPadding,
                ),
                Expanded(
                  child: DynamicCard(title: "التحصيل", type: FieldTypes.dropDown, dropDownList: list),
                ),
              ],
            ),
            SizedBox(
              width: KHelper.listPadding,
            ),
            const DynamicCard(title: "ملاحظان عن التبرع", type: FieldTypes.textFiled),
            const SizedBox(
              height: 40,
            ),
            KButton(
              title: "طلب مندوب",
              onPressed: () {},
              icon: Icons.fire_truck,
            )
          ],
        ),
      ),
    );
  }
}
