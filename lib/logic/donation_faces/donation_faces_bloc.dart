import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/general/common_data_model.dart';
import 'package:resala/data/repository/get_data/get_data_repo.dart';
import 'package:resala/shared/error/failuers.dart';
import 'package:resala/shared/localization/trans.dart';

import 'donation_faces_state.dart';

class DonationFacesBloc extends Cubit<DonationFacesState> {
  DonationFacesBloc({required this.repoImp}) : super(const DonationFacesState.loading());

  static DonationFacesBloc of(BuildContext context) {
    return BlocProvider.of<DonationFacesBloc>(context);
  }

  final GetDataRepoImp repoImp;
  CommonDataModel?  commonDataModel;





  get() async {
    try {
      emit(const DonationFacesState.loading());
      final result = await repoImp.getDonationFaces();
      result.fold(
        (l) {
          debugPrint('================= human Bloc : ${KFailure.toError(l)}');
          emit(DonationFacesState.error(failure: KFailure.toError(l)));
        },
        (r) {
          debugPrint('================= human Bloc : ${r.toString()}  ');
          commonDataModel = r;
          emit( DonationFacesState.success(model: commonDataModel!));
        },
      );
    } catch (e) {
      debugPrint('================= human Bloc (Catch): ${e.toString()} ');
      emit(  DonationFacesState.error(failure: Tr.get.try_later));
      rethrow;
    }
  }

}
