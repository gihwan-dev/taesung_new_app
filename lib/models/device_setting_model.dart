import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_setting_model.g.dart';
part 'device_setting_model.freezed.dart';

@freezed
class DeviceSettingModel with _$DeviceSettingModel {
  const factory DeviceSettingModel({
    @JsonKey(name: 'des_idx') required int desIdx,
    @JsonKey(name: 'di_idx') int? diIdx,
    @JsonKey(name: 'des_ouOver') int? desOuOver,
    @JsonKey(name: 'des_delayTime') int? desDelayTime,
    @JsonKey(name: 'mod_date') String? modDate,
  }) = _DeviceSettingModel;

  factory DeviceSettingModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceSettingModelFromJson(json);
}
