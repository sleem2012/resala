import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/general/common_data_model.dart';
import 'package:resala/data/repository/post_repo/post_data_repo.dart';
import 'package:resala/logic/store_donation/store_donation_state.dart';
import 'package:resala/shared/error/failuers.dart';

class StoreDonationBloc extends Cubit<StoreDonationState> {
  StoreDonationBloc({required this.repoImpl}) : super(const StoreDonationState.initial());

  static StoreDonationBloc of(BuildContext context) {
    return BlocProvider.of<StoreDonationBloc>(context);
  }

  final PostDataRepoImpl repoImpl;

  final TextEditingController valueController = TextEditingController();
  String? dateController;

  storeDonation() async {
    emit(const StoreDonationState.loading());
    try {
      final result = await repoImpl.storeDonation(amount: "12", transactionId: "2323232323", donationPointId: donationPointId??-1);
      result.fold(
            (l) {
          emit(StoreDonationState.error(failure: l));
          debugPrint('================= StoreDonation (Bloc): Failed => $l ');
        },
            (r) {
          emit(const StoreDonationState.success());
          debugPrint('================= StoreDonation (Bloc): Success => $r ');
        },
      );
    } catch (e) {
      debugPrint('================= StoreDonation (Bloc) (catch):  $e');

      emit(const StoreDonationState.error(failure: KFailure.someThingWrongPleaseTryAgain()));
    }
  }

  int? donationPointId;

  setDonationId({required CommonData commonData}) {
    donationPointId = commonData.id;
  }
}