import 'package:flutter/material.dart';
import 'package:resala/shared/localization/trans.dart';
import 'package:resala/shared/theme/colors.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/appbar.dart';
import 'package:resala/views/widgets/custom_button.dart';
import 'package:resala/views/widgets/date_picker.dart';
import 'package:resala/views/widgets/drop_down.dart';
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
                Expanded(
                  child: Column(
                    children: [
                      KButton(
                        title: "قيمة الإستمارة",
                        onPressed: () {},
                        isFlat: true,
                        kFillColor: KColors.of(context).accentColor,
                      ),
                      KTextFormField(
                        kFillColor: KColors.of(context).elevatedBox,
                        suffixIcon: const Icon(Icons.monetization_on_rounded),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: KHelper.listPadding,
                ),
                Expanded(
                  child: Column(
                    children: [
                      KButton(
                        title: "موعد التحصيل الشهري",
                        onPressed: () {},
                        isFlat: true,
                        kFillColor: KColors.of(context).accentColor,
                      ),
                      GestureDetector(
                        onTap: () async {
                          final date = await SfDatePicker.showDateTimePickerHG(
                            context,
                            type: KDateTimePickerType.dateGregorian,
                            start: DateTime.now(),
                            initial: DateTime.now(),
                            end: DateTime(2030),
                          );
                          if (date == null) return;
                          dateController.text = date;
                          // widget.onChanged(date);
                        },
                        child: KTextFormField(
                          hintText: DateTime.now().toString().substring(0, 10),
                          controller: dateController,
                          kFillColor: KColors.of(context).elevatedBox,
                          enabled: false,
                          suffixIcon: const Icon(Icons.date_range),
                          // errorText: "widget.error",
                          style: KTextStyle.of(context).body2,
                          validator: (p0) {
                            if (p0!.isEmpty) {
                              return "الحقل مطلوب";
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: KHelper.listPadding,
            ),
            Column(
              children: [
                KButton(
                  title: "جهة توجية الإستمارة",
                  onPressed: () {},
                  isFlat: true,
                  kFillColor: KColors.of(context).accentColor,
                ),
                KDropdownBtn<String>(
                  onChanged: (p0) {},
                  items: list.map((e) => KHelper.of(context).itemView<String>(itemText: e, value: e)).toList(),
                  hint: "مندوب",
                  // value: CurrenciesBloc.of(context).selectedCurrency,
                ),
              ],
            ),
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
