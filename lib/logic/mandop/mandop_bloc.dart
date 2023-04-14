import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/general/kslugmodel.dart';
import 'package:resala/data/models/store_model_model.dart';
import 'package:resala/data/repository/post_repo/post_data_repo.dart';
import 'package:resala/shared/error/failuers.dart';

import 'mandop_state.dart';

class MandopBloc extends Cubit<MandopState> {
  MandopBloc({required this.repoImpl}) : super(const MandopState.initial());

  static MandopBloc of(BuildContext context) {
    return BlocProvider.of<MandopBloc>(context);
  }

  final PostDataRepoImpl repoImpl;

  final TextEditingController chievmentController = TextEditingController();
  // final TextEditingController notesController = TextEditingController();
  final TextEditingController adressController = TextEditingController();

  StoreMandobModel storeMandobModel = StoreMandobModel();
  String? date;

  mandop() async {
    emit(const MandopState.loading());
    try {
      storeMandobModel = storeMandobModel.copyWith(
        // notes: notesController.text,
        chievment: chievmentController.text,
        address: adressController.text,
        dateTime: date,
      );
      final result = await repoImpl.storeMandob(model: storeMandobModel);
      result.fold(
        (l) {
          emit(MandopState.error(failure: l));
          debugPrint('================= Mandop (Bloc): Failed => $l ');
        },
        (r) {
          emit(const MandopState.success());
          debugPrint('================= Mandop (Bloc): Success => $r ');
        },
      );
    } catch (e) {
      debugPrint('================= Mandop (Bloc) (catch):  $e');

      emit(const MandopState.error(
          failure: KFailure.someThingWrongPleaseTryAgain()));
    }
  }

  String? selectedchievmentTitle;

  setAchievmentType({required KSlugModel type}) {
    storeMandobModel = storeMandobModel.copyWith(achievmentType: type.slug);
    if (type.slug == KSlugModel.money) {
      selectedchievmentTitle = 'قيمة المبلغ';
    } else if (type.slug == KSlugModel.material) {
      selectedchievmentTitle = 'نوع التحصيل العيني';
    } else if (type.slug == KSlugModel.recycle) {
      selectedchievmentTitle = ' عدد الاكياس الممتلئة';
    } else {
      selectedchievmentTitle = '';
    }
    emit(const MandopState.loading());
    emit(const MandopState.initial());
  }

}
