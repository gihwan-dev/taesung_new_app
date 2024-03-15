// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlarmSettingModelImpl _$$AlarmSettingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AlarmSettingModelImpl(
      asIdx: json['as_idx'] as int,
      diIdx: json['di_idx'] as int,
      asBatSet: json['as_batSet'] as int,
      asOuSet: json['as_ouSet'] as int,
      modDate: DateTime.parse(json['mod_date'] as String),
    );

Map<String, dynamic> _$$AlarmSettingModelImplToJson(
        _$AlarmSettingModelImpl instance) =>
    <String, dynamic>{
      'as_idx': instance.asIdx,
      'di_idx': instance.diIdx,
      'as_batSet': instance.asBatSet,
      'as_ouSet': instance.asOuSet,
      'mod_date': instance.modDate.toIso8601String(),
    };
