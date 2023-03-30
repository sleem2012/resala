import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/recyle_form_model.dart';
import 'package:resala/data/models/user/user_model.dart';
import 'package:resala/data/repository/post_repo/post_data_repo.dart';
import 'package:resala/shared/error/failuers.dart';

import 'store_recycle_state.dart';

class StoreRecycleBloc extends Cubit<StoreRecycleState> {
  StoreRecycleBloc({required this.repoImpl}) : super(const StoreRecycleState.initial());

  static StoreRecycleBloc of(BuildContext context) {
    return BlocProvider.of<StoreRecycleBloc>(context);
  }

  final PostDataRepoImpl repoImpl;
  UserModel? userModel;
  RecycleFormModel recycleFormModel = RecycleFormModel();
  bool isVisible = true;
  final TextEditingController floorController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  String? date;
  final TextEditingController regionController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController specialMarkController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  storeRecycle() async {
    emit(const StoreRecycleState.loading());
    try {
      recycleFormModel = recycleFormModel.copyWith(
        name: nameController.text,
        address: addressController.text,
        date:date,
        phone: phoneController.text,
        floor: floorController.text,
        region: regionController.text,
        specialMark:specialMarkController.text ,
        street: streetController.text,
      );
      final result = await repoImpl.storeRecycle(model: recycleFormModel);
      result.fold(
        (l) {
          emit(StoreRecycleState.error(failure: l));
          debugPrint('================= store recycle (Bloc): Failed => $l ');
        },
        (r) {
          emit( const StoreRecycleState.success());
          debugPrint('================= store recycle (Bloc): Success => $r ');
        },
      );
    } catch (e) {
      debugPrint('================= store recycle (Bloc) (catch):  $e');

      emit(const StoreRecycleState.error(failure: KFailure.someThingWrongPleaseTryAgain()));
      rethrow;
    }
  }


}
