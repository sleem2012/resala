import 'package:resala/shared/error/failuers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'human_case_state.freezed.dart';

@freezed
 class HumanCaseDonationState with _$HumanCaseDonationState {
  const factory HumanCaseDonationState.initial() = HumanCaseDonationStateInitial;
  const factory HumanCaseDonationState.loading() = HumanCaseDonationStateLoading;
  const factory HumanCaseDonationState.success() = HumanCaseDonationStateSuccess;
  const factory HumanCaseDonationState.error({required KFailure failure}) = HumanCaseDonationStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs


