// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationSettingModelImpl _$$NotificationSettingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationSettingModelImpl(
      nsIdx: json['ns_idx'] as int,
      diIdx: json['di_idx'] as int,
      nsOuOver: json['ns_ouOver'] as bool,
      nsDoorOpen: json['ns_doorOpen'] as bool,
      nsLowBattery: json['ns_lowBattery'] as bool,
      nsCollect: json['ns_collect'] as bool,
      modDate: DateTime.parse(json['mod_date'] as String),
    );

Map<String, dynamic> _$$NotificationSettingModelImplToJson(
        _$NotificationSettingModelImpl instance) =>
    <String, dynamic>{
      'ns_idx': instance.nsIdx,
      'di_idx': instance.diIdx,
      'ns_ouOver': instance.nsOuOver,
      'ns_doorOpen': instance.nsDoorOpen,
      'ns_lowBattery': instance.nsLowBattery,
      'ns_collect': instance.nsCollect,
      'mod_date': instance.modDate.toIso8601String(),
    };
