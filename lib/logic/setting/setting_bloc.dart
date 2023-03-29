import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/general/setting_model.dart';
import 'package:resala/data/repository/get_data/get_data_repo.dart';
import 'package:resala/shared/cache/storage.dart';
import 'package:resala/shared/error/failuers.dart';
import 'package:resala/shared/localization/trans.dart';

import 'setting_state.dart';

class SettingBloc extends Cubit<SettingState> {
  SettingBloc({required this.repoImp}) : super(const SettingState.loading());

  static SettingBloc of(BuildContext context) {
    return BlocProvider.of<SettingBloc>(context);
  }

  final GetDataRepoImp repoImp;
  SettingModel?  model;





  get() async {
    try {
      emit(const SettingState.loading());
      final result = await repoImp.getSetting();
      result.fold(
        (l) {
          debugPrint('================= Setting Bloc : ${KFailure.toError(l)}');
          emit(SettingState.error(failure: KFailure.toError(l)));
        },
        (r) {
          debugPrint('================= Setting Bloc : ${r.toString()}  ');
          model = r;
          KStorage.i.setSetting(r);
          emit( SettingState.success(model: model!));
        },
      );
    } catch (e) {
      debugPrint('================= Setting Bloc (Catch): ${e.toString()} ');
      emit(  SettingState.error(failure: Tr.get.try_later));
      rethrow;
    }
  }

}
