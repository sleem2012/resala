import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/general/kslugmodel.dart';
import 'package:resala/di.dart';
import 'package:resala/logic/mandop/mandop_bloc.dart';
import 'package:resala/logic/mandop/mandop_state.dart';
import 'package:resala/shared/cache/storage.dart';
import 'package:resala/shared/theme/colors.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/shared/theme/text_theme.dart';
import 'package:resala/views/widgets/appbar.dart';
import 'package:resala/views/widgets/custom_button.dart';
import 'package:resala/views/widgets/drop_down.dart';

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
                  KHelper.showSnackBar("تم طلب المندوب بنجاح", isTop: true);
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
                      Image.network(
                          KStorage.i.getSetting?.data?.info?.mandobImage ??
                              dummyNetImg),
                      SizedBox(
                        height: KHelper.listPadding,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              KButton(
                                title: "نوع التحصيل",
                                onPressed: () {},
                                isFlat: true,
                                kFillColor: KColors.of(context).accentColor,
                              ),
                              KDropdownBtn<KSlugModel>(
                                onChanged: (p0) {
                                  MandopBloc.of(context).setAchievmentType(
                                      type: p0 ??
                                          KSlugModel(slug: '', translated: ''));
                                },
                                items: KSlugModel.achievmentType
                                    .map((e) => KHelper.of(context)
                                        .itemView<KSlugModel>(
                                            itemText: e.translated, value: e))
                                    .toList(),
                                hint: "اختر",
                                validator: (values) {
                                  if (values == null) {
                                    return "الحقل مطلوب";
                                  } else {
                                    return null;
                                  }
                                },
                              )
                            ],
                          )),
                          SizedBox(
                            width: KHelper.listPadding,
                          ),
                          Expanded(
                            child: DynamicCard(
                              title: MandopBloc.of(context)
                                      .selectedchievmentTitle ??
                                  '',
                              type: FieldTypes.textFiled,
                              showSuffix: false,
                              kTextController: MandopBloc.of(context).chievmentController,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: KHelper.listPadding,
                      ),
                      // DynamicCard(
                      //     title: "ملاحظان عن التبرع",
                      //     type: FieldTypes.textFiled,
                      //     kTextController:
                      //         MandopBloc.of(context).notesController),
                      SizedBox(
                        height: KHelper.listPadding,
                      ),
                      DynamicCard(
                          title: "العنوان",
                          type: FieldTypes.textFiled,
                          kTextController:
                              MandopBloc.of(context).adressController),
                      SizedBox(
                        height: KHelper.listPadding,
                      ),
                      DynamicCard(
                        title: "معاد التحصيل",
                        type: FieldTypes.datePicker,
                        onChanged: (p0) {
                          MandopBloc.of(context).date = p0;
                        },
                      ),
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
