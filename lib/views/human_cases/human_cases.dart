import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:resala/data/models/general/common_data_model.dart';
import 'package:resala/di.dart';
import 'package:resala/logic/humancases/human_cases_bloc.dart';
import 'package:resala/logic/humancases/human_cases_state.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/custom_button.dart';
import 'package:resala/views/widgets/loading/loading_overlay.dart';
import 'package:resala/views/widgets/text_field.dart';
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
            isLoading: state.maybeWhen(orElse: () => false, loading: () => true),
            error: state.whenOrNull(error: (error) => error),
            onTryAgain: state.whenOrNull(error: (error) => HumanCasesBloc.of(context).get),
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
                      padding: EdgeInsets.symmetric(horizontal: KHelper.hPadding),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return VerticalCard(
                          key: const ValueKey("7"),
                          model: human.commonDataModel?.data?[index] ?? CommonData(),
                          onPressed: () {
                            Get.bottomSheet(Material(
                              child: Container(
                                decoration: KHelper.of(context).elevatedBox,
                                // height: Get.height * .2,
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const KTextFormField(
                                      hintText: 'قيمة التبرع',
                                    ),
                                    SizedBox(
                                      height: KHelper.listPadding,
                                    ),
                                    KButton(
                                      title: "تأكيد",
                                      onPressed: () {
                                        // print(human.commonDataModel?.data?[index].id);
                                      },
                                      icon: Icons.credit_card,
                                    ),
                                  ],
                                ),
                              ),
                            ));
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
