import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/di.dart';
import 'package:resala/logic/monthly_donations/monthly_bloc.dart';
import 'package:resala/logic/monthly_donations/monthly_state.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/appbar.dart';
import 'package:resala/views/widgets/custom_button.dart';

import 'package:resala/views/widgets/dynamic_card.dart';
import 'package:resala/views/widgets/loading/loading_overlay.dart';

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
      body: BlocProvider(
        create: (context) => Di.monthly,
        child: BlocConsumer<MonthlyBloc, MonthlyState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                KHelper.showSnackBar("تم التبرع بنجاح",isTop: true);

              },
            );
          },
          builder: (context, state) {
            return KLoadingOverlay(
              isLoading:state is MonthlyStateLoading,
              child: SingleChildScrollView(
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
                        style: KTextStyle
                            .of(context)
                            .title,
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
                          child: DynamicCard(title: "قيمة الإستمارة", type: FieldTypes.textFiled, showSuffix: true,kTextController: MonthlyBloc.of(context).valueController),
                        ),
                        SizedBox(
                          width: KHelper.listPadding,
                        ),
                         Expanded(
                          child: DynamicCard(title: "موعد التحصيل الشهري", type: FieldTypes.datePicker,onChanged: (p0) {
                            MonthlyBloc.of(context).dateController=p0;
                          },),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: KHelper.listPadding,
                    ),
                    DynamicCard(title: "جهة توجية الإستمار", type: FieldTypes.dropDown, dropDownList: list),
                    const SizedBox(
                      height: 40,
                    ),
                    KButton(
                      title: "أضف تبرع",
                      onPressed: () {
                        MonthlyBloc.of(context).monthly();
                      },
                      icon: Icons.credit_card,
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
