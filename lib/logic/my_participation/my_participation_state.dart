import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resala/data/models/my_participation_model.dart';
part 'my_participation_state.freezed.dart';

@freezed
 class MyParticipationState with _$MyParticipationState{
  const factory MyParticipationState.loading() = MyParticipationStateLoading;
  const factory MyParticipationState.success({required MyParticipationModel model}) = MyParticipationStateSuccess;
  const factory MyParticipationState.error({required String failure}) = MyParticipationStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 