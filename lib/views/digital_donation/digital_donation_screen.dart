import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/general/common_data_model.dart';
import 'package:resala/di.dart';
import 'package:resala/logic/donation_faces/donation_faces_bloc.dart';
import 'package:resala/logic/donation_faces/donation_faces_state.dart';
import 'package:resala/logic/store_donation/store_donation_bloc.dart';
import 'package:resala/payment/auth_payment/auth_payment_bloc.dart';
import 'package:resala/payment/auth_payment/auth_payment_state.dart';
import 'package:resala/payment/data/model/transaction_response_model.dart';
import 'package:resala/shared/api_client/api_client/endpoints.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/appbar.dart';
import 'package:resala/views/widgets/custom_button.dart';
import 'package:resala/views/widgets/dynamic_card.dart';
import 'package:resala/views/widgets/loading/loading_overlay.dart';
import 'package:resala/views/widgets/not_loggedin.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DigitalDonationScreen extends StatelessWidget {
  const DigitalDonationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KNotLoggedInView(
      child: Scaffold(
        appBar: const KAppBar(
          title: "",
        ),
        body: MultiBlocProvider(
          providers: [

            BlocProvider(
              create: (context) => Di.storeDonation,
            ),
          ],
          child: BlocConsumer<PaymentBloc, PaymentState>(
            listener: (context, state) {
              state.whenOrNull(
                successPaymentKey: (paymentKeyResponse) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scaffold(
                        appBar: const KAppBar(),
                        body: WebView(
                          initialUrl: KEndPoints.visaUrl,
                          javascriptMode: JavascriptMode.unrestricted,
                          onPageFinished: (url) async {
                            if (url.contains('success=true')) {
                              //   Get.to(OnSuccessView(msg: Tr.get.payment_added_successfully, doubleBack: true));
                              //   MyPaymentsBloc.of(context).getMyPayments();
                              // } else if (url.contains("fail")) {
                              //   Nav.of(context).replace(OnErrorView(msg: Tr.get.error_card, doubleBack: true));
                              debugPrint('url => $url');
                              // Get.back() ;
                              // }
                              final paymobUrl = Uri.parse(url);
                              final transactionParams = TransactionParams.fromJson(paymobUrl.queryParameters);
                              debugPrint('transactionParams.transactionId => ${transactionParams.transactionId}');
                              debugPrint('transactionParams.transactionId => ${transactionParams.statusParam}');
                              debugPrint('transactionParams.amount => ${transactionParams.amount}');
                            }
                          },
                          onPageStarted: (url) async {
                            // if (url.contains('webhook')) {
                            //   Get.to(OnSuccessView(msg: Tr.get.payment_added_successfully, doubleBack: true));
                            //   MyPaymentsBloc.of(context).getMyPayments();
                            // } else if (url.contains("fail")) {
                            //   Nav.of(context).replace(OnErrorView(msg: Tr.get.error_card, doubleBack: true));
                            debugPrint('url => $url');
                            // Get.back() ;
                            // }
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            builder: (context, state) {
              final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

              return SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: KHelper.hPadding, vertical: 40),
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
                                  StoreDonationBloc.of(context).setDonationId(commonData: p0 ?? CommonData());
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
                      KButton(
                        title: "أضف تبرع",
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            PaymentBloc.of(context).paymentAuth();
                          }
                          // StoreDonationBloc.of(context).storeDonation();
                        },
                        icon: Icons.credit_card,
                      ),
                      SizedBox(
                        height: KHelper.listPadding,
                      ),
                    ],
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
