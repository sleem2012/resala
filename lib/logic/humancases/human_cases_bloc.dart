import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/general/common_data_model.dart';
import 'package:resala/data/repository/get_data/get_data_repo.dart';
import 'package:resala/shared/error/failuers.dart';
import 'package:resala/shared/localization/trans.dart';

import 'human_cases_state.dart';

class HumanCasesBloc extends Cubit<HumanCasesState> {
  HumanCasesBloc({required this.repoImp}) : super(const HumanCasesState.loading());

  static HumanCasesBloc of(BuildContext context) {
    return BlocProvider.of<HumanCasesBloc>(context);
  }

  final GetDataRepoImp repoImp;
  CommonDataModel?  commonDataModel;





  get() async {
    try {
      emit(const HumanCasesState.loading());
      final result = await repoImp.getHumanCases();
      result.fold(
        (l) {
          debugPrint('================= human Bloc : ${KFailure.toError(l)}');
          emit(HumanCasesState.error(failure: KFailure.toError(l)));
        },
        (r) {
          debugPrint('================= human Bloc : ${r.toString()}  ');
          commonDataModel = r;
          emit( HumanCasesState.success(model: commonDataModel!));
        },
      );
    } catch (e) {
      debugPrint('================= human Bloc (Catch): ${e.toString()} ');
      emit(  HumanCasesState.error(failure: Tr.get.try_later));
      rethrow;
    }
  }

}
