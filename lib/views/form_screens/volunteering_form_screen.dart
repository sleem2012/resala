import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/general/common_data_model.dart';
import 'package:resala/di.dart';
import 'package:resala/logic/activities/activities_bloc.dart';
import 'package:resala/logic/activities/activities_state.dart';
import 'package:resala/logic/donation_faces/donation_faces_bloc.dart';
import 'package:resala/logic/store_volunteer/volunteer_bloc.dart';
import 'package:resala/logic/store_volunteer/volunteer_state.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/appbar.dart';
import 'package:resala/views/widgets/custom_button.dart';

import 'package:resala/views/widgets/dynamic_card.dart';
import 'package:resala/views/widgets/loading/loading_overlay.dart';
import 'package:resala/views/widgets/not_loggedin.dart';

class VolunteeringFormScreen extends StatelessWidget {
  const VolunteeringFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return KNotLoggedInView(
      child: Scaffold(
        appBar: const KAppBar(
          title: "",
        ),
        body: BlocProvider(
          create: (context) => Di.volunteer,
          child: BlocConsumer<VolunteerBloc, VolunteerState>(
            listener: (context, state) {
              state.whenOrNull(
                success: () {
                  KHelper.showSnackBar("تم ارسال الاستماره بنجاح", isTop: true);
                },
              );
            },
            builder: (context, state) {
              return KLoadingOverlay(
                isLoading: state is VolunteerStateLoading,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: KHelper.hPadding),
                  child: Form(
                    key:formKey ,
                    child: Column(
                      children: [
                        SizedBox(
                          height: KHelper.listPadding,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "استمارة التطوع",
                            style: KTextStyle.of(context).title,
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
                              child: DynamicCard(title: "العمر", type: FieldTypes.textFiled, kTextController: VolunteerBloc.of(context).ageController),
                            ),
                            SizedBox(
                              width: KHelper.listPadding,
                            ),
                            Expanded(
                              child: DynamicCard(
                                title: "الكلية",
                                type: FieldTypes.textFiled,
                                kTextController: VolunteerBloc.of(context).collegeController,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: KHelper.listPadding,
                        ),
                        BlocBuilder<ActivitiesBloc, ActivitiesState>(
                          builder: (context, state) {
                            final activities = ActivitiesBloc.of(context).commonDataModel;

                            return KRequestOverlay(
                                isLoading: state.maybeWhen(orElse: () => false, loading: () => true),
                                error: state.whenOrNull(error: (error) => error),
                                onTryAgain: state.whenOrNull(error: (error) => DonationFacesBloc.of(context).get),
                                child: DynamicCard(
                                  title: "النشاط",
                                  type: FieldTypes.dropDown,
                                  dropDownList: activities?.data,
                                  onListSelected: (p0) {
                                    VolunteerBloc.of(context).setDonationId(commonData: p0??CommonData());
                                  },
                                ));
                          },
                        ),

                        const SizedBox(
                          height: 40,
                        ),
                        KButton(
                          title: "ارسل الإستمارة",
                          onPressed: () {
                            if(formKey.currentState!.validate()){
                              VolunteerBloc.of(context).volunteer();

                            }
                          },
                          icon: Icons.sticky_note_2_sharp,
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
