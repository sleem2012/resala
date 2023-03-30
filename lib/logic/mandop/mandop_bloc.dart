import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  final TextEditingController notesController = TextEditingController();

  mandop() async {
    emit(const MandopState.loading());
    try {
      final result = await repoImpl.storeMandob(chievment: chievmentController.text, notes: notesController.text);
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

      emit(const MandopState.error(failure: KFailure.someThingWrongPleaseTryAgain()));
    }
  }


}
