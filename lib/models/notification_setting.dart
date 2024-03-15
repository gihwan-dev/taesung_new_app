import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_setting.freezed.dart';
part 'notification_setting.g.dart';

@freezed
class NotificationSettingModel with _$NotificationSettingModel {
  const factory NotificationSettingModel({
    @JsonKey(name: 'ns_idx') required int nsIdx,
    @JsonKey(name: 'di_idx') required int diIdx,
    @JsonKey(name: 'ns_ouOver') required bool nsOuOver,
    @JsonKey(name: 'ns_doorOpen') required bool nsDoorOpen,
    @JsonKey(name: 'ns_lowBattery') required bool nsLowBattery,
    @JsonKey(name: 'ns_collect') required bool nsCollect,
    @JsonKey(name: 'mod_date') required DateTime modDate,
  }) = _NotificationSettingModel;

  factory NotificationSettingModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingModelFromJson(json);
}
