import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resala/data/models/general/common_data_model.dart';
part 'donation_faces_state.freezed.dart';

@freezed
 class DonationFacesState with _$DonationFacesState{
  const factory DonationFacesState.loading() = DonationFacesStateLoading;
  const factory DonationFacesState.success({required CommonDataModel model}) = DonationFacesStateSuccess;
  const factory DonationFacesState.error({required String failure}) = DonationFacesStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 