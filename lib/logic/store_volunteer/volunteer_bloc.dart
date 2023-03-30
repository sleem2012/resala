import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/repository/post_repo/post_data_repo.dart';
import 'package:resala/logic/store_volunteer/volunteer_state.dart';
import 'package:resala/shared/error/failuers.dart';



class VolunteerBloc extends Cubit<VolunteerState> {
  VolunteerBloc({required this.repoImpl}) : super(const VolunteerState.initial());

  static VolunteerBloc of(BuildContext context) {
    return BlocProvider.of<VolunteerBloc>(context);
  }

  final PostDataRepoImpl repoImpl;

  final TextEditingController ageController = TextEditingController();
  final TextEditingController collegeController = TextEditingController();

  volunteer() async {
    emit(const VolunteerState.loading());
    try {
      ///TODO:donationPointId
      final result = await repoImpl.storeVolunteer(age:ageController.text,college:collegeController.text,donationPointId: 1  );
      result.fold(
        (l) {
          emit(VolunteerState.error(failure: l));
          debugPrint('================= Volunteer (Bloc): Failed => $l ');

        },
        (r) {

          emit(const VolunteerState.success());
          debugPrint('================= Volunteer (Bloc): Success => $r ');
        },
      );
    } catch (e) {
      debugPrint('================= Volunteer (Bloc) (catch):  $e');

      emit(const VolunteerState.error(failure: KFailure.someThingWrongPleaseTryAgain()));
    }
  }


}
