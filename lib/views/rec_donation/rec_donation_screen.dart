import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/general/common_data_model.dart';
import 'package:resala/di.dart';
import 'package:resala/logic/donation_faces/donation_faces_bloc.dart';
import 'package:resala/logic/donation_faces/donation_faces_state.dart';
import 'package:resala/logic/rec_donations/get/get_rec_donation_bloc.dart';
import 'package:resala/logic/rec_donations/get/get_rec_donation_state.dart';
import 'package:resala/logic/rec_donations/post/post_rec_donations_bloc.dart';
import 'package:resala/logic/rec_donations/post/post_rec_donations_state.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/appbar.dart';
import 'package:resala/views/widgets/custom_button.dart';
import 'package:resala/views/widgets/dynamic_card.dart';
import 'package:resala/views/widgets/loading/loading_overlay.dart';
import 'package:resala/views/widgets/not_loggedin.dart';

class RecDonationScreen extends StatelessWidget {
  const RecDonationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return KNotLoggedInView(
      child: Scaffold(
          appBar: const KAppBar(
            title: "",
          ),
          body: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => Di.getRecDonation..get(),
              ),
              BlocProvider(
                create: (context) => Di.postRecDonation,
              )
            ],
            child: BlocBuilder<GetRecDonationBloc, GetRecDonationState>(
              builder: (context, state) {
                final getDonation = GetRecDonationBloc.of(context);
                return KRequestOverlay(
                  isLoading: state.maybeWhen(orElse: () => false, loading: () => true),
                  error: state.whenOrNull(error: (error) => error),
                  onTryAgain: state.whenOrNull(error: (error) => GetRecDonationBloc.of(context).get),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: KHelper.hPadding, vertical: 40),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "تبرعك",
                                style: KTextStyle.of(context).title,
                              )),
                          SizedBox(
                            height: KHelper.listPadding,
                          ),

                          Image.asset("assets/image/mandop_rect.png"),
                          SizedBox(
                            height: KHelper.listPadding,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: DynamicCard(
                                  title: "بلاستيك",
                                  type: FieldTypes.textFiled,
                                  enabled: false,
                                  kTextController: GetRecDonationBloc.of(context).plastic,
                                ),
                              ),
                              SizedBox(
                                width: KHelper.listPadding,
                              ),
                              Expanded(
                                child: DynamicCard(
                                  title: "ورق",
                                  type: FieldTypes.textFiled,
                                  enabled: false,
                                  kTextController: GetRecDonationBloc.of(context).paper,
                                ),
                              ),
                              SizedBox(
                                width: KHelper.listPadding,
                              ),
                              Expanded(
                                child: DynamicCard(
                                  title: "معدن",
                                  type: FieldTypes.textFiled,
                                  enabled: false,
                                  kTextController: GetRecDonationBloc.of(context).metal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: KHelper.listPadding,
                          ),
                          DynamicCard(
                            title: "عدد النقاط",
                            type: FieldTypes.textFiled,
                            enabled: false,
                            kTextController: GetRecDonationBloc.of(context).points,
                          ),
                          SizedBox(
                            height: KHelper.listPadding,
                          ),
                          BlocBuilder<DonationFacesBloc, DonationFacesState>(
                            builder: (context, state) {
                              final donationFaces = DonationFacesBloc.of(context).commonDataModel;

                              return KRequestOverlay(
                                  isLoading: state.maybeWhen(orElse: () => false, loading: () => true),
                                  error: state.whenOrNull(error: (error) => error),
                                  onTryAgain: state.whenOrNull(error: (error) => DonationFacesBloc.of(context).get),
                                  child: DynamicCard(
                                    title: "أوجه التبرع",
                                    type: FieldTypes.dropDown,
                                    dropDownList: donationFaces?.data,

                                    onListSelected: (p0) {
                                      PostRecDonationsBloc.of(context).setDonationId(commonData: p0 ?? CommonData());
                                    },
                                  ));
                            },
                          ),
                          // SizedBox(
                          //   height: KHelper.listPadding,
                          // ),
                          // const DynamicCard(
                          //   title: "ملاحظات عن التبرع",
                          //   type: FieldTypes.textFiled,
                          // ),
                          const SizedBox(
                            height: 70,
                          ),
                          if (getDonation.model != null)
                            BlocConsumer<PostRecDonationsBloc, PostRecDonationsState>(
                              listener: (context, state) {
                                state.whenOrNull(
                                  success: () {
                                    KHelper.showSnackBar("تم التبرع بنجاح", isTop: true);
                                    GetRecDonationBloc.of(context).get();
                                  },
                                );
                              },
                              builder: (context, state) {
                                return KButton(
                                  isLoading: state is PostRecDonationsStateLoading,
                                  title: "أضف تبرع",
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      PostRecDonationsBloc.of(context).post();
                                    }
                                  },
                                  icon: Icons.credit_card,
                                );
                              },
                            ),
                          SizedBox(
                            height: KHelper.listPadding,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )),
    );
  }
}
