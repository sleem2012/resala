import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:resala/logic/calculator/calculate_zakaa_bloc.dart';
import 'package:resala/payment/auth_payment/auth_payment_bloc.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/digital_donation/digital_donation_screen.dart';
import 'package:resala/views/widgets/custom_button.dart';
import 'package:resala/views/widgets/dynamic_card.dart';

class CalculateZakaaScreen extends StatefulWidget {
  const CalculateZakaaScreen({Key? key}) : super(key: key);

  @override
  State<CalculateZakaaScreen> createState() => _CalculateZakaaScreenState();
}

class _CalculateZakaaScreenState extends State<CalculateZakaaScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalculateZakaaBloc(0),
      child: BlocBuilder<CalculateZakaaBloc, num>(
        builder: (context, state) {
          final calculate = CalculateZakaaBloc.of(context);
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: KHelper.hPadding, vertical: 120),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "زكاة المال",
                  style: KTextStyle.of(context).subtitle,
                ),
                DynamicCard(
                  title: "قيمة المال الذي املكه",
                  type: FieldTypes.textFiled,
                  showSuffix: true,
                  kTextController: calculate.myMoneyController,
                ),
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
                DynamicCard(
                  title: "قيمة الأسهم التي امتلكها في السوق",
                  type: FieldTypes.textFiled,
                  showSuffix: true,
                  kTextController: calculate.ashmController,
                ),
                SizedBox(
                  height: KHelper.hPadding,
                ),
                DynamicCard(
                  title: "قيمة السندات التي امتلكها في السوق",
                  type: FieldTypes.textFiled,
                  showSuffix: true,
                  kTextController: calculate.sanadatController,
                ),
                SizedBox(
                  height: KHelper.hPadding,
                ),
                DynamicCard(title: "قيمة الأرباح التي حصلت عليها", type: FieldTypes.textFiled, showSuffix: true, kTextController: calculate.arpahController),
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
                DynamicCard(
                  title: "قيمة إيجار العقار الشهري الذي امتلكه",
                  type: FieldTypes.textFiled,
                  showSuffix: true,
                  kTextController: calculate.ownRealStateController,
                ),
                const SizedBox(
                  height: 20,
                ),
                KButton(
                  title: "قيمة الزكاة",
                  onPressed: () {
setState(() {

});
                    calculate.calculateZakaa();
                  },
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
                        trailing: Text('${calculate.moneyResult } ج.م'),
                      ),
                      ListTile(
                        title: Text(
                          "زكاة الأصول و الممتلكات",
                          style: KTextStyle.of(context).body,
                        ),
                        trailing: Text('${calculate.propertiesResult} ج.م'),
                      ),
                      ListTile(
                        title: Text(
                          "زكاة الذهب",
                          style: KTextStyle.of(context).body,
                        ),
                        trailing: const Text('0 ج.م'),
                      ),
                      ListTile(
                        title: Text(
                          "زكاة العقارات المملوكة",
                          style: KTextStyle.of(context).body,
                        ),
                        trailing: Text('${calculate.realEstateResult } ج.م'),
                      ),
                      const Divider(color: Colors.grey, height: 3),
                      ListTile(
                        title: Text(
                          "إجمالي مبلغ الزكاة",
                          style: KTextStyle.of(context).subtitle,
                        ),
                        trailing: Text('${calculate.totalResult } ج.م'),
                      ),
                    ],
                  ),
                ),
                KButton(
                  title: "تبرع الأن",
                  onPressed: () {
                    PaymentBloc.of(context).priceController.text=calculate.totalResult.toString();
                    Get.to( ()=>const DigitalDonationScreen());
                  },
                  isFlat: true,
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
