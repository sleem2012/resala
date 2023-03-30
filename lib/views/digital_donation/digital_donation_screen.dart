import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:resala/di.dart';
import 'package:resala/logic/donation_faces/donation_faces_bloc.dart';
import 'package:resala/logic/donation_faces/donation_faces_state.dart';
import 'package:resala/logic/store_donation/store_donation_bloc.dart';
import 'package:resala/payment/auth_payment/auth_payment_bloc.dart';
import 'package:resala/payment/auth_payment/auth_payment_state.dart';
import 'package:resala/shared/api_client/api_client/endpoints.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/appbar.dart';
import 'package:resala/views/widgets/custom_button.dart';
import 'package:resala/views/widgets/dynamic_card.dart';
import 'package:resala/views/widgets/loading/loading_overlay.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DigitalDonationScreen extends StatelessWidget {
  const DigitalDonationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final List<String> faces = [
    //   "أيتام",
    //   "وصلة مياه",
    //   "أسقف",
    //   "سداد ديون",
    //   "مشاريع صغيرة",
    //   "تجهيز عرائس",
    //   " حضانة أطفال",
    //   "سداد ديون",
    //   "مشاريع صغيرة",
    //   "تجهيز عرائس",
    //   " حضانة أطفال",
    //   "شنط غذائية"
    // ];
    return Scaffold(
      appBar: const KAppBar(
        title: "",
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => Di.payment,
          ),
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
                          // if (url.contains('forallfa')) {
                          //   Get.to(OnSuccessView(msg: Tr.get.payment_added_successfully, doubleBack: true));
                          //   MyPaymentsBloc.of(context).getMyPayments();
                          // } else if (url.contains("fail")) {
                          //   Nav.of(context).replace(OnErrorView(msg: Tr.get.error_card, doubleBack: true));
                          debugPrint('url => $url');
                          // Get.back() ;
                          // }
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
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: KHelper.hPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text(
                    "أوجه التبرع",
                    style: KTextStyle.of(context).title,
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
                        child: SizedBox(
                          height: Get.height * .4,
                          child: GridView.builder(
                            itemCount: donationFaces?.data?.length,
                            padding: EdgeInsets.zero,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 3, crossAxisSpacing: 0),
                            itemBuilder: (context, index) {
                              return CheckboxListTile(
                                value: false,
                                onChanged: (value) {},
                                title: Text(
                                  "${index + 1}- " + (donationFaces?.data?[index].title ?? ''),
                                  style: KTextStyle.of(context).boldBody,
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),
                  // SizedBox(
                  //   height: KHelper.listPadding,
                  // ),
                  // const DynamicCard(
                  //   title: "ملاحظات عن التبرع",
                  //   type: FieldTypes.textFiled,
                  // ),
                  // SizedBox(
                  //   height: KHelper.listPadding,
                  // ),
                  KButton(
                    title: "أضف تبرع",
                    onPressed: () {
                      // PaymentBloc.of(context).paymentAuth();
                      StoreDonationBloc.of(context).storeDonation();
                    },
                    icon: Icons.credit_card,
                  ),
                  SizedBox(
                    height: KHelper.listPadding,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
