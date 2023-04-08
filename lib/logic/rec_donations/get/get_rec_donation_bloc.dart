import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/rec_donations_model.dart';
import 'package:resala/data/repository/get_data/get_data_repo.dart';
import 'package:resala/shared/error/failuers.dart';
import 'package:resala/shared/localization/trans.dart';

import 'get_rec_donation_state.dart';

class GetRecDonationBloc extends Cubit<GetRecDonationState> {
  GetRecDonationBloc({required this.repoImp}) : super(const GetRecDonationState.loading());

  static GetRecDonationBloc of(BuildContext context) {
    return BlocProvider.of<GetRecDonationBloc>(context);
  }

  final GetDataRepoImp repoImp;
  RecDonationsData?  model;

final TextEditingController plastic=TextEditingController();
final TextEditingController metal=TextEditingController();
final TextEditingController paper=TextEditingController();
final TextEditingController points=TextEditingController();



  get() async {
    try {
      emit(const GetRecDonationState.loading());
      final result = await repoImp.getRecDonations();
      result.fold(
        (l) {
          debugPrint('================= GetRecDonation Bloc : ${KFailure.toError(l)}');
          emit(GetRecDonationState.error(failure: KFailure.toError(l)));
        },
        (r) {
          debugPrint('================= GetRecDonation Bloc : ${r.toString()}  ');
          model = r.data;
          plastic.text=" ${r.data?.plastic.toString()??0} كيلو ";
          metal.text=" ${r.data?.metal.toString()??0} كيلو ";
          paper.text=" ${r.data?.paper.toString()??0} كيلو ";
          points.text=" ${r.data?.points.toString()??0}  نقطة ";
          emit( GetRecDonationState.success(model: model??RecDonationsData()));
        },
      );
    } catch (e) {
      debugPrint('================= GetRecDonation Bloc (Catch): ${e.toString()} ');
      emit(  GetRecDonationState.error(failure: Tr.get.try_later));
      rethrow;
    }
  }

}
