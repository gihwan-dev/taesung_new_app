// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceSettingModelImpl _$$DeviceSettingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceSettingModelImpl(
      desIdx: json['des_idx'] as int,
      diIdx: json['di_idx'] as int?,
      desOuOver: json['des_ouOver'] as int?,
      desDelayTime: json['des_delayTime'] as int?,
      modDate: json['mod_date'] as String?,
    );

Map<String, dynamic> _$$DeviceSettingModelImplToJson(
        _$DeviceSettingModelImpl instance) =>
    <String, dynamic>{
      'des_idx': instance.desIdx,
      'di_idx': instance.diIdx,
      'des_ouOver': instance.desOuOver,
      'des_delayTime': instance.desDelayTime,
      'mod_date': instance.modDate,
    };
