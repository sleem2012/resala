import 'package:resala/shared/error/failuers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'mandop_state.freezed.dart';

@freezed
 class MandopState with _$MandopState {
  const factory MandopState.initial() = MandopStateInitial;
  const factory MandopState.loading() = MandopStateLoading;
  const factory MandopState.success() = MandopStateSuccess;
  const factory MandopState.error({required KFailure failure}) = MandopStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs


