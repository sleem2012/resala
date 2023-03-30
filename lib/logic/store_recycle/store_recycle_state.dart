import 'package:resala/shared/error/failuers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'store_recycle_state.freezed.dart';

@freezed
 class StoreRecycleState with _$StoreRecycleState {
  const factory StoreRecycleState.initial() = StoreRecycleStateInitial;
  const factory StoreRecycleState.loading() = StoreRecycleStateLoading;
  const factory StoreRecycleState.success() = StoreRecycleStateSuccess;
  const factory StoreRecycleState.error({required KFailure failure}) = StoreRecycleStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs


