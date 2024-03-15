import 'package:freezed_annotation/freezed_annotation.dart';

part 'alarm_setting_model.freezed.dart';
part 'alarm_setting_model.g.dart';

@freezed
class AlarmSettingModel with _$AlarmSettingModel {
  const factory AlarmSettingModel({
    @JsonKey(name: 'as_idx') required int asIdx,
    @JsonKey(name: 'di_idx') required int diIdx,
    @JsonKey(name: 'as_batSet') required int asBatSet,
    @JsonKey(name: 'as_ouSet') required int asOuSet,
    @JsonKey(name: 'mod_date') required DateTime modDate,
  }) = _AlarmSettingModel;

  factory AlarmSettingModel.fromJson(Map<String, dynamic> json) =>
      _$AlarmSettingModelFromJson(json);
}
