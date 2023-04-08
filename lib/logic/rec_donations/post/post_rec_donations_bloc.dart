import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/general/common_data_model.dart';
import 'package:resala/data/repository/post_repo/post_data_repo.dart';
import 'package:resala/shared/error/failuers.dart';

import 'post_rec_donations_state.dart';

class PostRecDonationsBloc extends Cubit<PostRecDonationsState> {
  PostRecDonationsBloc({required this.repoImpl}) : super(const PostRecDonationsState.initial());

  static PostRecDonationsBloc of(BuildContext context) {
    return BlocProvider.of<PostRecDonationsBloc>(context);
  }

  final PostDataRepoImpl repoImpl;

  post() async {
    emit(const PostRecDonationsState.loading());
    try {
      final result = await repoImpl.postRecDonations(donationPointId: donationPointId??-1);
      result.fold(
        (l) {
          emit(PostRecDonationsState.error(failure: l));
          debugPrint('================= PostRecDonations (Bloc): Failed => $l ');
        },
        (r) {
          emit(const PostRecDonationsState.success());
          debugPrint('================= PostRecDonations (Bloc): Success => $r ');
        },
      );
    } catch (e) {
      debugPrint('================= PostRecDonations (Bloc) (catch):  $e');

      emit(const PostRecDonationsState.error(failure: KFailure.someThingWrongPleaseTryAgain()));
    }
  }

  int? donationPointId;

  setDonationId({required CommonData commonData}) {
    donationPointId=commonData.id;
  }
}
