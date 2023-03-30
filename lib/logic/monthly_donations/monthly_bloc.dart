import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/repository/post_repo/post_data_repo.dart';
import 'package:resala/shared/error/failuers.dart';

import 'monthly_state.dart';



class MonthlyBloc extends Cubit<MonthlyState> {
  MonthlyBloc({required this.repoImpl}) : super(const MonthlyState.initial());

  static MonthlyBloc of(BuildContext context) {
    return BlocProvider.of<MonthlyBloc>(context);
  }

  final PostDataRepoImpl repoImpl;

  final TextEditingController valueController = TextEditingController();
   String? dateController ;

  monthly() async {
    emit(const MonthlyState.loading());
    try {
      ///TODO:donationPointId
      final result = await repoImpl.monthlyDonations(value:valueController.text,date:dateController??'',donationPointId: 1  );
      result.fold(
        (l) {
          emit(MonthlyState.error(failure: l));
          debugPrint('================= Monthly (Bloc): Failed => $l ');

        },
        (r) {

          emit(const MonthlyState.success());
          debugPrint('================= Monthly (Bloc): Success => $r ');
        },
      );
    } catch (e) {
      debugPrint('================= Monthly (Bloc) (catch):  $e');

      emit(const MonthlyState.error(failure: KFailure.someThingWrongPleaseTryAgain()));
    }
  }


}
