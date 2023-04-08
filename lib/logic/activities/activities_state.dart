import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resala/data/models/general/common_data_model.dart';
part 'activities_state.freezed.dart';

@freezed
 class ActivitiesState with _$ActivitiesState{
  const factory ActivitiesState.loading() = ActivitiesStateLoading;
  const factory ActivitiesState.success({required CommonDataModel model}) = ActivitiesStateSuccess;
  const factory ActivitiesState.error({required String failure}) = ActivitiesStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 