import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/my_participation_model.dart';
import 'package:resala/data/repository/get_data/get_data_repo.dart';
import 'package:resala/shared/error/failuers.dart';
import 'package:resala/shared/localization/trans.dart';

import 'my_participation_state.dart';

class MyParticipationBloc extends Cubit<MyParticipationState> {
  MyParticipationBloc({required this.repoImp}) : super(const MyParticipationState.loading());

  static MyParticipationBloc of(BuildContext context) {
    return BlocProvider.of<MyParticipationBloc>(context);
  }

  final GetDataRepoImp repoImp;
  MyParticipationModel?  model;





  get() async {
    try {
      emit(const MyParticipationState.loading());
      final result = await repoImp.getMyParticipation();
      result.fold(
        (l) {
          debugPrint('================= human Bloc : ${KFailure.toError(l)}');
          emit(MyParticipationState.error(failure: KFailure.toError(l)));
        },
        (r) {
          debugPrint('================= human Bloc : ${r.toString()}  ');
          model = r;
          emit( MyParticipationState.success(model: model!));
        },
      );
    } catch (e) {
      debugPrint('================= human Bloc (Catch): ${e.toString()} ');
      emit(  MyParticipationState.error(failure: Tr.get.try_later));
      rethrow;
    }
  }

}
