import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/di.dart';
import 'package:resala/logic/mandop/mandop_bloc.dart';
import 'package:resala/logic/mandop/mandop_state.dart';
import 'package:resala/shared/cache/storage.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/appbar.dart';
import 'package:resala/views/widgets/custom_button.dart';

import 'package:resala/views/widgets/dynamic_card.dart';
import 'package:resala/views/widgets/loading/loading_overlay.dart';
import 'package:resala/views/widgets/not_loggedin.dart';

class MandopScreen extends StatelessWidget {
  const MandopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KNotLoggedInView(
      child: Scaffold(
        appBar: const KAppBar(
          title: "",
        ),
        body: BlocProvider(
          create: (context) => Di.mandop,
          child: BlocConsumer<MandopBloc, MandopState>(
            listener: (context, state) {
              state.whenOrNull(
                success: () {
                  KHelper.showSnackBar("تم طلب المندوب بنجاح",isTop: true);

                },
              );
            },
            builder: (context, state) {
              return KLoadingOverlay(
                isLoading: state is MandopStateLoading,
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
                          "طلب مندوب تحصيل",
                          style: KTextStyle.of(context).title,
                        ),
                      ),
                      SizedBox(
                        height: KHelper.listPadding,
                      ),
                      Image.network(KStorage.i.getSetting?.data?.info?.mandobImage ?? dummyNetImg),
                      SizedBox(
                        height: KHelper.listPadding,
                      ),
                      Row(
                        children: [
                           const Expanded(
                            child: DynamicCard(
                              title: "قيمة المبلغ",
                              type: FieldTypes.textFiled,
                              showSuffix: true,
                            ),
                          ),
                          SizedBox(
                            width: KHelper.listPadding,
                          ),
                          Expanded(
                            child: DynamicCard(title: "التحصيل", type: FieldTypes.textFiled, kTextController: MandopBloc.of(context).chievmentController),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: KHelper.listPadding,
                      ),
                      DynamicCard(title: "ملاحظان عن التبرع", type: FieldTypes.textFiled, kTextController: MandopBloc.of(context).notesController),
                      const SizedBox(
                        height: 40,
                      ),
                      KButton(
                        title: "طلب مندوب",
                        onPressed: () {
                          MandopBloc.of(context).mandop();
                        },
                        icon: Icons.fire_truck,
                      )
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
