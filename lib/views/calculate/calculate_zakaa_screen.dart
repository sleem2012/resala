import 'package:flutter/material.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/custom_button.dart';
import 'package:resala/views/widgets/dynamic_card.dart';

class CalculateZakaaScreen extends StatelessWidget {
  const CalculateZakaaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: KHelper.hPadding, vertical: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "زكاة المال",
            style: KTextStyle.of(context).subtitle,
          ),
          const DynamicCard(title: "قيمة المال الذي املكه", type: FieldTypes.textFiled, showSuffix: true),
          SizedBox(
            height: KHelper.hPadding,
          ),
          const Divider(color: Colors.grey, height: 3),
          SizedBox(
            height: KHelper.hPadding,
          ),
          Text(
            "زكاة الأصول و الممتلكات",
            style: KTextStyle.of(context).subtitle,
          ),
          const DynamicCard(title: "قيمة الأسهم التي امتلكها في السوق", type: FieldTypes.textFiled, showSuffix: true),
          SizedBox(
            height: KHelper.hPadding,
          ),
          const DynamicCard(title: "قيمة السندات التي امتلكها في السوق", type: FieldTypes.textFiled, showSuffix: true),
          SizedBox(
            height: KHelper.hPadding,
          ),
          const DynamicCard(title: "قيمة الأرباح التي حصلت عليها", type: FieldTypes.textFiled, showSuffix: true),
          SizedBox(
            height: KHelper.hPadding,
          ),
          const Divider(color: Colors.grey, height: 3),
          SizedBox(
            height: KHelper.hPadding,
          ),
          Text(
            "زكاة الذهب",
            style: KTextStyle.of(context).subtitle,
          ),
          const DynamicCard(
            title: "وزن الذهب الذي تملكة من عيار 18",
            type: FieldTypes.textFiled,
          ),
          SizedBox(
            height: KHelper.hPadding,
          ),
          const DynamicCard(
            title: "وزن الذهب الذي تملكة من عيار 21",
            type: FieldTypes.textFiled,
          ),
          SizedBox(
            height: KHelper.hPadding,
          ),
          const Divider(color: Colors.grey, height: 3),
          SizedBox(
            height: KHelper.hPadding,
          ),
          Text(
            "زكاة العقارات المملوكة",
            style: KTextStyle.of(context).subtitle,
          ),
          const DynamicCard(title: "قيمة إيجار العقار الشهري الذي امتلكه", type: FieldTypes.textFiled, showSuffix: true),
          const SizedBox(
            height: 20,
          ),
          KButton(
            title: "قيمة الزكاة",
            onPressed: () {},
            isFlat: true,
          ),
          Container(
            decoration: KHelper.of(context).elevatedBox,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "زكاة المال",
                    style: KTextStyle.of(context).body,
                  ),
                  trailing: const Text('0 ج.م'),
                ),
                ListTile(
                  title: Text(
                    "زكاة الأصول و الممتلكات",
                    style: KTextStyle.of(context).body,
                  ),
                  trailing: const Text('0 ج.م'),
                ),
                ListTile(
                  title: Text(
                    "زكاة العقارات المملوكة",
                    style: KTextStyle.of(context).body,
                  ),
                  trailing: const Text('0 ج.م'),
                ),
                const Divider(color: Colors.grey, height: 3),
                ListTile(
                  title: Text(
                    "إجمالي مبلغ الزكاة",
                    style: KTextStyle.of(context).subtitle,
                  ),
                  trailing: const Text('0 ج.م'),
                ),
              ],
            ),
          ),

          KButton(
            title: "تبرع الأن",
            onPressed: () {},
            isFlat: true,
          ),
          const SizedBox(
            height: 100,
          ),

        ],
      ),
    );
  }
}
