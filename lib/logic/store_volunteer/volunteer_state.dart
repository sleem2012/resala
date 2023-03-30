import 'package:resala/shared/error/failuers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'volunteer_state.freezed.dart';

@freezed
 class VolunteerState with _$VolunteerState {
  const factory VolunteerState.initial() = VolunteerStateInitial;
  const factory VolunteerState.loading() = VolunteerStateLoading;
  const factory VolunteerState.success() = VolunteerStateSuccess;
  const factory VolunteerState.error({required KFailure failure}) = VolunteerStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs


