import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:resala/logic/calculator/calculate_zakaa_bloc.dart';
import 'package:resala/payment/auth_payment/payment_bloc.dart';
import 'package:resala/shared/cache/storage.dart';
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
            padding: EdgeInsets.symmetric(
                horizontal: KHelper.hPadding, vertical: 120),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Center(
                //   child: Text(
                //     "سعر جرام الذهب اليوم : ${KStorage.i.getSetting?.data?.info?.goldPrice ?? ''} ج",
                //     style: KTextStyle.of(context).subtitle,
                //   ),
                // ),
                 Text(

                  'شروط الزكاة: إذا كان عندك ما يقدر في الذهب ب 85 جرام  أو ذا كان عندك ما يقدر في الفضة ب 595 جرام و مر عليه عام كامل لم ينقص فيه وجبت الزكاة',
                textAlign: TextAlign.center,
                    style: KTextStyle.of(context).subtitle,

                ),

                SizedBox(
                  height: KHelper.hPadding,
                ),
                Text(
                  "زكاة المال",
                  style: KTextStyle.of(context).subtitle,
                ),
                // Text(
                //   calculate.lessZakaa,
                //   style: KTextStyle.of(context).subtitle,
                // ),
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
                DynamicCard(
                    title: "قيمة الأرباح التي حصلت عليها",
                    type: FieldTypes.textFiled,
                    showSuffix: true,
                    kTextController: calculate.arpahController),
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
                 DynamicCard(
                  title: "وزن الذهب الذي تملكة من عيار 18",
                  type: FieldTypes.textFiled,
                  kTextController: calculate.eighteenGoldController,
                ),
                SizedBox(
                  height: KHelper.hPadding,
                ),
                 DynamicCard(
                  title: "وزن الذهب الذي تملكة من عيار 21",
                  type: FieldTypes.textFiled,
                  kTextController: calculate.twenyOneGoldController,

                ),   SizedBox(
                  height: KHelper.hPadding,
                ),
                 DynamicCard(
                  title: "وزن الذهب الذي تملكة من عيار 24",
                  type: FieldTypes.textFiled,
                  kTextController: calculate.twenyFourGoldController,

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
                    setState(() {});
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
                        trailing: Text('${calculate.moneyResult} ج.م'),
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
                        trailing: Text('${calculate.goldResult} ج.م'),
                      ),
                      ListTile(
                        title: Text(
                          "زكاة العقارات المملوكة",
                          style: KTextStyle.of(context).body,
                        ),
                        trailing: Text('${calculate.realEstateResult} ج.م'),
                      ),
                      const Divider(color: Colors.grey, height: 3),
                      ListTile(
                        title: Text(
                          "إجمالي مبلغ الزكاة",
                          style: KTextStyle.of(context).subtitle,
                        ),
                        trailing: Text('${calculate.totalResult} ج.م'),
                      ),
                    ],
                  ),
                ),
                KButton(
                  title: "تبرع الأن",
                  onPressed: () {
                    if(calculate.canDonate){
                      PaymentBloc.of(context).priceController.text =
                          calculate.totalResult.toString();
                      Get.to(() => const DigitalDonationScreen());
                    }
                    else{
                      KHelper.showSnackBar("لم تتخطي حد الزكاه بعد");
                    }

                  },
                  isFlat: true,
                ),
                // const SizedBox(
                //   height: 20,
                // ),
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
