import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resala/data/models/general/setting_model.dart';
part 'setting_state.freezed.dart';

@freezed
 class SettingState with _$SettingState{
  const factory SettingState.loading() = SettingStateLoading;
  const factory SettingState.success({required SettingModel model}) = SettingStateSuccess;
  const factory SettingState.error({required String failure}) = SettingStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 