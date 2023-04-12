import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/repository/post_repo/post_data_repo.dart';
import 'package:resala/logic/human_case_donation/human_case_state.dart';
import 'package:resala/shared/error/failuers.dart';

class HumanCaseDonationBloc extends Cubit<HumanCaseDonationState> {
  HumanCaseDonationBloc({required this.repoImpl})
      : super(const HumanCaseDonationState.initial());

  static HumanCaseDonationBloc of(BuildContext context) {
    return BlocProvider.of<HumanCaseDonationBloc>(context);
  }

  final PostDataRepoImpl repoImpl;

  final TextEditingController valueController = TextEditingController();
  String? dateController;

  humanCaseDonation({required int amount, required String transactionId,required int humanId}) async {
    emit(const HumanCaseDonationState.loading());
    try {
      final result = await repoImpl.humanCaseDonation(
          amount: amount,
          transactionId: transactionId,
          humanCaseId: humanId );
      result.fold(
        (l) {
          emit(HumanCaseDonationState.error(failure: l));
          debugPrint('================= HumanCaseDonation (Bloc): Failed => $l ');
        },
        (r) {
          emit(const HumanCaseDonationState.success());
          debugPrint('================= HumanCaseDonation (Bloc): Success => $r ');
        },
      );
    } catch (e) {
      debugPrint('================= HumanCaseDonation (Bloc) (catch):  $e');

      emit(const HumanCaseDonationState.error(
          failure: KFailure.someThingWrongPleaseTryAgain()));
    }
  }


}
