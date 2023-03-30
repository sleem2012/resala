import 'package:resala/shared/error/failuers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'monthly_state.freezed.dart';

@freezed
 class MonthlyState with _$MonthlyState {
  const factory MonthlyState.initial() = MonthlyStateInitial;
  const factory MonthlyState.loading() = MonthlyStateLoading;
  const factory MonthlyState.success() = MonthlyStateSuccess;
  const factory MonthlyState.error({required KFailure failure}) = MonthlyStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs


