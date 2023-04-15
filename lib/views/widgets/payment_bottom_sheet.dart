import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/general/kslugmodel.dart';
import 'package:resala/payment/auth_payment/payment_bloc.dart';
import 'package:resala/payment/auth_payment/payment_state.dart';
import 'package:resala/payment/data/model/transaction_response_model.dart';
import 'package:resala/payment/view/payment_webview.dart';
import 'package:resala/shared/theme/colors.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/views/widgets/custom_button.dart';
import 'package:resala/views/widgets/dynamic_card.dart';
import 'package:resala/views/widgets/text_field.dart';

import 'drop_down.dart';
import 'not_loggedin.dart';

class PaymentBottomSheet extends StatelessWidget {
  const PaymentBottomSheet({Key? key, required this.onSuccess})
      : super(key: key);
  final Function(TransactionParams url) onSuccess;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return KNotLoggedInView(
      child: Material(
        child: Container(
          decoration: KHelper.of(context).elevatedBox,
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                KTextFormField(
                  hintText: 'قيمة التبرع',
                  keyboardType: TextInputType.number,
                  formatter: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  controller: PaymentBloc.of(context).priceController,
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return "الحقل مطلوب";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: KHelper.listPadding,
                ),
                Column(
                  children: [

                    KDropdownBtn<KSlugModel>(
                      onChanged: (p0) {
                        PaymentBloc.of(context).setPaymentType(
                            type: p0 ?? KSlugModel(slug: '', translated: ''));
                      },
                      items: KSlugModel.paymentType
                          .map((e) => KHelper.of(context)
                          .itemView<KSlugModel>(
                          itemText: e.translated, value: e))
                          .toList(),
                      hint: " اختر طريقة الدفع",
                      validator: (values) {
                        if (values == null) {
                          return "الحقل مطلوب";
                        } else {
                          return null;
                        }
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: KHelper.listPadding,
                ),
                BlocBuilder<PaymentBloc, PaymentState>(
                  builder: (context, state) {
                    if (PaymentBloc.of(context).isWallet) {
                      return DynamicCard(
                        title: "رقم المحفظه",
                        type: FieldTypes.textFiled,
                        keyboardType: TextInputType.phone,
                        kTextController:
                        PaymentBloc.of(context).walletNumberController,
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
                SizedBox(
                  height: KHelper.listPadding,
                ),
                PaymentWebView(
                  onSuccess: onSuccess,
                  child: KButton(
                    title: "تأكيد",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        PaymentBloc.of(context).paymentAuth();
                      }
                      // print(human.commonDataModel?.data?[index].id);
                    },
                    icon: Icons.credit_card,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
