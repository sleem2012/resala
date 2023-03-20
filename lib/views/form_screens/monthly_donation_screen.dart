import 'package:flutter/material.dart';
import 'package:resala/shared/localization/trans.dart';
import 'package:resala/shared/theme/colors.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/appbar.dart';
import 'package:resala/views/widgets/custom_button.dart';
import 'package:resala/views/widgets/date_picker.dart';
import 'package:resala/views/widgets/drop_down.dart';
import 'package:resala/views/widgets/dynamic_card.dart';
import 'package:resala/views/widgets/text_field.dart';

class MonthlyDonationScreen extends StatelessWidget {
  const MonthlyDonationScreen({Key? key}) : super(key: key);

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
                "استمارة التبرع الشهري",
                style: KTextStyle.of(context).title,
              ),
            ),
            SizedBox(
              height: KHelper.listPadding,
            ),
            Image.asset("assets/image/monthly_rectangle.png"),
            SizedBox(
              height: KHelper.listPadding,
            ),
            Row(
              children: [
                const Expanded(
                  child:             DynamicCard(title: "قيمة الإستمارة", type: FieldTypes.textFiled),

                ),
                SizedBox(
                  width: KHelper.listPadding,
                ),
      const Expanded(
        child:             DynamicCard(title: "موعد التحصيل الشهري", type: FieldTypes.datePicker),

      ),
              ],
            ),
            SizedBox(
              width: KHelper.listPadding,
            ),
            const DynamicCard(title: "جهة توجية الإستمار", type: FieldTypes.dropDown),
            const SizedBox(
              height: 40,
            ),
            KButton(
              title: "أضف تبرع",
              onPressed: () {},
              icon: Icons.credit_card,
            )
          ],
        ),
      ),
    );
  }
}
