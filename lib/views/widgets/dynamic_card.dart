import 'package:flutter/material.dart';
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
  const DynamicCard({Key? key, required this.title, this.dropDownList, required this.type}) : super(key: key);
  final String title;
  final List<String>? dropDownList;
  final FieldTypes type;

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
            suffixIcon: const Icon(Icons.monetization_on_rounded),
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
          )
        else
          KDropdownBtn<String>(
            onChanged: (p0) {},
            items: dropDownList?.map((e) => KHelper.of(context).itemView<String>(itemText: e, value: e)).toList() ?? [],
            hint: "مندوب",
            // value: CurrenciesBloc.of(context).selectedCurrency,
          )
      ],
    );
  }
}

// class Cases extends StatelessWidget {
//   const Cases({Key? key, required this.type, required this.dropDownList}) : super(key: key);
//   final FieldTypes type;
//   final List<String> dropDownList;
//
//   @override
//   Widget build(BuildContext context) {
//     switch (type) {
//       case FieldTypes.dropDown:
//         KDropdownBtn<String>(
//           onChanged: (p0) {},
//           items: dropDownList.map((e) => KHelper.of(context).itemView<String>(itemText: e, value: e)).toList(),
//           hint: "مندوب",
//           // value: CurrenciesBloc.of(context).selectedCurrency,
//         );
//         break;
//       case FieldTypes.datePicker:
//         GestureDetector(
//           onTap: () async {
//             final date = await SfDatePicker.showDateTimePickerHG(
//               context,
//               type: KDateTimePickerType.dateGregorian,
//               start: DateTime.now(),
//               initial: DateTime.now(),
//               end: DateTime(2030),
//             );
//             if (date == null) return;
//             dateController.text = date;
//             // widget.onChanged(date);
//           },
//           child: KTextFormField(
//             hintText: DateTime.now().toString().substring(0, 10),
//             controller: dateController,
//             kFillColor: KColors.of(context).elevatedBox,
//             enabled: false,
//             suffixIcon: const Icon(Icons.date_range),
//             // errorText: "widget.error",
//             style: KTextStyle.of(context).body2,
//             validator: (p0) {
//               if (p0!.isEmpty) {
//                 return "الحقل مطلوب";
//               }
//               return null;
//             },
//           ),
//         );
//
//         break;
//
//       default:
//     }
//     return const SizedBox();
//   }
// }
