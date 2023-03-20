import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resala/shared/theme/colors.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/appbar.dart';
import 'package:resala/views/widgets/custom_button.dart';
import 'package:resala/views/widgets/date_picker.dart';

import 'package:resala/views/widgets/text_field.dart';

class RecycleFormScreen extends StatelessWidget {
  const RecycleFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const KAppBar(
        title: "",
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: KHelper.hPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "استمارة ريسايكل",
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
            Text(
              'الإسم',
              style: KTextStyle.of(context).body,
            ),
            KTextFormField(
              hintText: 'ادخل اسمك',
              kFillColor: KColors.of(context).background,
            ),
            SizedBox(
              height: KHelper.listPadding,
            ),
            Text(
              'التاريخ',
              style: KTextStyle.of(context).body,
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
                kFillColor: KColors.of(context).background,
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
            SizedBox(
              height: KHelper.listPadding,
            ),
            Text(
              'رقم التليفون',
              style: KTextStyle.of(context).body,
            ),
            KTextFormField(
              hintText: 'ادخل رقم التليفون',
              kFillColor: KColors.of(context).background,
              keyboardType: TextInputType.phone,
            ),
            SizedBox(
              height: KHelper.listPadding,
            ),
            Text(
              'العنوان بالتفصيل',
              style: KTextStyle.of(context).body,
            ),
            KTextFormField(
              hintText: 'المركز',
              kFillColor: KColors.of(context).background,
            ),
            KTextFormField(
              hintText: 'المنطقة',
              kFillColor: KColors.of(context).background,
            ),
            KTextFormField(
              hintText: 'الشارع',
              kFillColor: KColors.of(context).background,
            ),
            KTextFormField(
              hintText: 'الدور',
              kFillColor: KColors.of(context).background,
            ),
            KTextFormField(
              hintText: 'علامة مميزة',
              kFillColor: KColors.of(context).background,
            ),
            const SizedBox(
              height: 40,
            ),
            KButton(
              title: "تسجيل الإستمارة",
              onPressed: () {},
              icon: Icons.sticky_note_2_sharp,
            ),
            SizedBox(
              height: KHelper.listPadding,
            ),
          ],
        ),
      ),
    );
  }
}
