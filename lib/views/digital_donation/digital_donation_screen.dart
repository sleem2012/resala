import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/general/common_data_model.dart';
import 'package:resala/di.dart';
import 'package:resala/logic/donation_faces/donation_faces_bloc.dart';
import 'package:resala/logic/donation_faces/donation_faces_state.dart';
import 'package:resala/logic/store_donation/store_donation_bloc.dart';
import 'package:resala/payment/auth_payment/auth_payment_bloc.dart';
import 'package:resala/payment/data/model/transaction_response_model.dart';
import 'package:resala/payment/view/payment_webview.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/appbar.dart';
import 'package:resala/views/widgets/custom_button.dart';
import 'package:resala/views/widgets/dynamic_card.dart';
import 'package:resala/views/widgets/loading/loading_overlay.dart';
import 'package:resala/views/widgets/not_loggedin.dart';

class DigitalDonationScreen extends StatelessWidget {
  const DigitalDonationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return KNotLoggedInView(
      child: BlocProvider(
        create: (context) => Di.storeDonation,
        child: Scaffold(
          appBar: const KAppBar(
            title: "",
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
                horizontal: KHelper.hPadding, vertical: 40),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: KHelper.listPadding,
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "الدفع الإلكتروني",
                        style: KTextStyle.of(context).title,
                      )),
                  SizedBox(
                    height: KHelper.listPadding,
                  ),
                  DynamicCard(
                    title: "قيمة التبرع",
                    type: FieldTypes.textFiled,
                    showSuffix: true,
                    kTextController: PaymentBloc.of(context).priceController,
                  ),
                  SizedBox(
                    height: KHelper.listPadding,
                  ),

                  SizedBox(
                    height: KHelper.listPadding,
                  ),
                  BlocBuilder<DonationFacesBloc, DonationFacesState>(
                    builder: (context, state) {
                      final donationFaces =
                          DonationFacesBloc.of(context).commonDataModel;

                      return KRequestOverlay(
                          isLoading: state.maybeWhen(
                              orElse: () => false, loading: () => true),
                          error: state.whenOrNull(error: (error) => error),
                          onTryAgain: state.whenOrNull(
                              error: (error) =>
                                  DonationFacesBloc.of(context).get),
                          child: DynamicCard(
                            title: "أوجه التبرع",
                            type: FieldTypes.dropDown,
                            dropDownList: donationFaces?.data,
                            onListSelected: (p0) {
                              StoreDonationBloc.of(context).setDonationId(
                                  commonData: p0 ?? CommonData());
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
                  Builder(builder: (_) {
                    return PaymentWebView(
                      onSuccess: (TransactionParams url) {
                        StoreDonationBloc.of(_).storeDonation(
                            amount: (url.amountParam / 100).toString(),
                            transactionId: url.transactionId ?? '');
                      },
                      child: KButton(
                        title: "أضف تبرع",
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            PaymentBloc.of(context).paymentAuth();
                          }
                        },
                        icon: Icons.credit_card,
                      ),
                    );
                  }),
                  SizedBox(
                    height: KHelper.listPadding,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
