import 'package:flutter/material.dart';
import 'package:resala/data/models/general/common_data_model.dart';
import 'package:resala/shared/theme/colors.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/custom_button.dart';
import 'package:resala/views/widgets/text_field.dart';

import 'date_picker.dart';
import 'drop_down.dart';

enum FieldTypes {
  textFiled,
  dropDown,
  datePicker,
}

class DynamicCard extends StatelessWidget {
  const DynamicCard({
    Key? key,
    required this.title,
    this.dropDownList,
    required this.type,
    this.showSuffix = false,
    this.kTextController,
    this.onChanged,
    this.onListSelected,
    this.enabled = true, this.keyboardType,
  }) : super(key: key);
  final String title;
  final List<CommonData>? dropDownList;
  final FieldTypes type;
  final bool showSuffix;
  final bool enabled;
  final TextEditingController? kTextController;
  final TextInputType? keyboardType;
  final Function(String?)? onChanged;
  final Function(CommonData?)? onListSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KButton(
          title: title,
          onPressed: () {},
          isFlat: true,
          kFillColor: KColors.of(context).accentColor,
        ),
        if (type == FieldTypes.textFiled)
          KTextFormField(
            kFillColor: KColors.of(context).elevatedBox,
            suffixIcon:
                showSuffix ? const Icon(Icons.monetization_on_rounded) : null,
            controller: kTextController,
            enabled: enabled,
            keyboardType: keyboardType??TextInputType.text,
            validator: (p0) {
              if (p0!.isEmpty) {
                return "الحقل مطلوب";
              }
              return null;
            },
          )
        else if (type == FieldTypes.datePicker)
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
              onChanged!(date);
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
          )
        else
          KDropdownBtn<CommonData>(
            onChanged: (p0) {
              onListSelected!(p0);
            },
            items: dropDownList
                    ?.map((e) => KHelper.of(context).itemView<CommonData>(
                        itemText: e.title ?? '', value: e))
                    .toList() ??
                [],
            hint: "اختر",

            validator: (values) {
              if (values == null) {
                return "الحقل مطلوب";
              } else {
                return null;
              }
            },
            // value: CurrenciesBloc.of(context).selectedCurrency,
          )
      ],
    );
  }
}
