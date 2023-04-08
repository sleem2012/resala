import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/general/common_data_model.dart';
import 'package:resala/data/repository/get_data/get_data_repo.dart';
import 'package:resala/shared/error/failuers.dart';
import 'package:resala/shared/localization/trans.dart';

import 'activities_state.dart';

class ActivitiesBloc extends Cubit<ActivitiesState> {
  ActivitiesBloc({required this.repoImp}) : super(const ActivitiesState.loading());

  static ActivitiesBloc of(BuildContext context) {
    return BlocProvider.of<ActivitiesBloc>(context);
  }

  final GetDataRepoImp repoImp;
  CommonDataModel?  commonDataModel;





  get() async {
    try {
      emit(const ActivitiesState.loading());
      final result = await repoImp.getActivities();
      result.fold(
        (l) {
          debugPrint('================= activities Bloc : ${KFailure.toError(l)}');
          emit(ActivitiesState.error(failure: KFailure.toError(l)));
        },
        (r) {
          debugPrint('================= activities Bloc : ${r.toString()}  ');
          commonDataModel = r;
          emit( ActivitiesState.success(model: commonDataModel!));
        },
      );
    } catch (e) {
      debugPrint('================= activities Bloc (Catch): ${e.toString()} ');
      emit(  ActivitiesState.error(failure: Tr.get.try_later));
      rethrow;
    }
  }

}
