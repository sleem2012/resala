import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resala/data/models/rec_donations_model.dart';
part 'get_rec_donation_state.freezed.dart';

@freezed
 class GetRecDonationState with _$GetRecDonationState{
  const factory GetRecDonationState.loading() = GetRecDonationStateLoading;
  const factory GetRecDonationState.success({required RecDonationsData model}) = GetRecDonationStateSuccess;
  const factory GetRecDonationState.error({required String failure}) = GetRecDonationStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 