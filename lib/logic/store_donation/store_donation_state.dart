import 'package:resala/shared/error/failuers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'store_donation_state.freezed.dart';

@freezed
 class StoreDonationState with _$StoreDonationState {
  const factory StoreDonationState.initial() = StoreDonationStateInitial;
  const factory StoreDonationState.loading() = StoreDonationStateLoading;
  const factory StoreDonationState.success() = StoreDonationStateSuccess;
  const factory StoreDonationState.error({required KFailure failure}) = StoreDonationStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs


