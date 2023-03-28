import 'package:resala/shared/error/failuers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_state.freezed.dart';

@freezed
 class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = RegisterStateInitial;
  const factory RegisterState.loading() = RegisterStateLoading;
  const factory RegisterState.success() = RegisterStateSuccess;
  const factory RegisterState.error({required KFailure failure}) = RegisterStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs


