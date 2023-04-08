import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/general/common_data_model.dart';
import 'package:resala/di.dart';
import 'package:resala/logic/donation_faces/donation_faces_bloc.dart';
import 'package:resala/logic/donation_faces/donation_faces_state.dart';
import 'package:resala/logic/monthly_donations/monthly_bloc.dart';
import 'package:resala/logic/monthly_donations/monthly_state.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/appbar.dart';
import 'package:resala/views/widgets/custom_button.dart';

import 'package:resala/views/widgets/dynamic_card.dart';
import 'package:resala/views/widgets/loading/loading_overlay.dart';
import 'package:resala/views/widgets/not_loggedin.dart';

class MonthlyDonationScreen extends StatelessWidget {
  const MonthlyDonationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return KNotLoggedInView(
      child: Scaffold(
        appBar: const KAppBar(
          title: "",
        ),
        body: BlocProvider(
          create: (context) => Di.monthly,
          child: BlocConsumer<MonthlyBloc, MonthlyState>(
            listener: (context, state) {
              state.whenOrNull(
                success: () {
                  KHelper.showSnackBar("تم التبرع بنجاح", isTop: true);
                },
              );
            },
            builder: (context, state) {
              return KLoadingOverlay(
                isLoading: state is MonthlyStateLoading,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: KHelper.hPadding),
                  child: Form(
                    key: formKey,
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
                              child:
                                  DynamicCard(title: "قيمة الإستمارة", type: FieldTypes.textFiled, showSuffix: true, kTextController: MonthlyBloc.of(context).valueController),
                            ),
                            SizedBox(
                              width: KHelper.listPadding,
                            ),
                            Expanded(
                              child: DynamicCard(
                                title: "موعد التحصيل الشهري",
                                type: FieldTypes.datePicker,
                                onChanged: (p0) {
                                  MonthlyBloc.of(context).dateController = p0;
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: KHelper.listPadding,
                        ),
                        BlocBuilder<DonationFacesBloc, DonationFacesState>(
                          builder: (context, state) {
                            final donationFaces = DonationFacesBloc.of(context).commonDataModel;

                            return KRequestOverlay(
                                isLoading: state.maybeWhen(orElse: () => false, loading: () => true),
                                error: state.whenOrNull(error: (error) => error),
                                onTryAgain: state.whenOrNull(error: (error) => DonationFacesBloc.of(context).get),
                                child: DynamicCard(
                                  title: "جهة توجية الإستمار",
                                  type: FieldTypes.dropDown,
                                  dropDownList: donationFaces?.data,
                                  onListSelected: (p0) {
                                    MonthlyBloc.of(context).setDonationId(commonData: p0 ?? CommonData());
                                  },
                                ));
                          },
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        KButton(
                          title: "أضف تبرع",
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              MonthlyBloc.of(context).monthly();
                            }
                          },
                          icon: Icons.credit_card,
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
