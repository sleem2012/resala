import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/di.dart';
import 'package:resala/logic/store_volunteer/volunteer_bloc.dart';
import 'package:resala/logic/store_volunteer/volunteer_state.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/appbar.dart';
import 'package:resala/views/widgets/custom_button.dart';

import 'package:resala/views/widgets/dynamic_card.dart';
import 'package:resala/views/widgets/loading/loading_overlay.dart';

class VolunteeringFormScreen extends StatelessWidget {
  const VolunteeringFormScreen({Key? key}) : super(key: key);

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
        create: (context) => Di.volunteer,
        child: BlocConsumer<VolunteerBloc, VolunteerState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                KHelper.showSnackBar("تم ارسال الاستماره بنجاح",isTop: true);

              },
            );
          },
          builder: (context, state) {
            return KLoadingOverlay(
              isLoading: state is VolunteerStateLoading,
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
                        "استمارة التطوع",
                        style: KTextStyle
                            .of(context)
                            .title,
                      ),
                    ),
                    SizedBox(
                      height: KHelper.listPadding,
                    ),
                    Image.asset("assets/image/voulnter_rectangle.png"),
                    SizedBox(
                      height: KHelper.listPadding,
                    ),
                    Row(
                      children: [
                         Expanded(
                          child: DynamicCard(title: "العمر", type: FieldTypes.textFiled,kTextController: VolunteerBloc.of(context).ageController),
                        ),
                        SizedBox(
                          width: KHelper.listPadding,
                        ),
                         Expanded(
                          child: DynamicCard(title: "الكلية", type: FieldTypes.textFiled,kTextController: VolunteerBloc.of(context).collegeController,),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: KHelper.listPadding,
                    ),
                    DynamicCard(title: "النشاط", type: FieldTypes.dropDown, dropDownList: list),
                    const SizedBox(
                      height: 40,
                    ),
                    KButton(
                      title: "ارسل الإستمارة",
                      onPressed: () {
                        VolunteerBloc.of(context).volunteer();
                      },
                      icon: Icons.sticky_note_2_sharp,
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
