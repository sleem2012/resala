import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:resala/data/models/general/common_data_model.dart';
import 'package:resala/di.dart';
import 'package:resala/logic/human_case_donation/human_case_donation_bloc.dart';
import 'package:resala/logic/humancases/human_cases_bloc.dart';
import 'package:resala/logic/humancases/human_cases_state.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/loading/loading_overlay.dart';
import 'package:resala/views/widgets/payment_bottom_sheet.dart';
import 'package:resala/views/widgets/vertical_card.dart';

class HumanCasesList extends StatelessWidget {
  const HumanCasesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Di.humanCases..get(),
      child: BlocBuilder<HumanCasesBloc, HumanCasesState>(
        builder: (context, state) {
          final human = HumanCasesBloc.of(context);

          return KRequestOverlay(
            isLoading:
                state.maybeWhen(orElse: () => false, loading: () => true),
            error: state.whenOrNull(error: (error) => error),
            onTryAgain: state.whenOrNull(
                error: (error) => HumanCasesBloc.of(context).get),
            child: SizedBox(
              height: Get.height * .5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: KHelper.hPadding),
                    child: Text(
                      "حالات إنسانية",
                      style: KTextStyle.of(context).title,
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      padding:
                          EdgeInsets.symmetric(horizontal: KHelper.hPadding),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return VerticalCard(
                          key: const ValueKey("7"),
                          model: human.commonDataModel?.data?[index] ??
                              CommonData(),
                          onPressed: () {
                            Get.bottomSheet(
                              BlocProvider(
                                create: (context) => Di.humanCaseDonation,
                                child: Builder(
                                  builder: (_) {
                                    return PaymentBottomSheet(
                                      onSuccess: (url) {
                                        HumanCaseDonationBloc.of(_)
                                            .humanCaseDonation(
                                                amount: url.amountParam ~/ 100
                                                    ,
                                                transactionId:
                                                    url.transactionId ?? '',
                                                humanId: human.commonDataModel
                                                        ?.data?[index].id ??
                                                    -1);
                                      },
                                    );
                                  }
                                ),
                              ),
                            );
                          },
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: KHelper.listPadding,
                        );
                      },
                      itemCount: human.commonDataModel?.data?.length ?? 0,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
