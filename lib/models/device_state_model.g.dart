// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceStateModelImpl _$$DeviceStateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceStateModelImpl(
      dsIdx: json['ds_idx'] as int,
      diIdx: json['di_idx'] as int,
      dsDoor: json['ds_door'] as int,
      dsBat: json['ds_bat'] as int,
      dsCollect: json['ds_collect'] as int,
      dsRemoteCollect: json['ds_remoteCollect'] as int,
      modeDate: json['mod_date'] as String,
      hasError: json['hasError'] as bool? ?? false,
    );

Map<String, dynamic> _$$DeviceStateModelImplToJson(
        _$DeviceStateModelImpl instance) =>
    <String, dynamic>{
      'ds_idx': instance.dsIdx,
      'di_idx': instance.diIdx,
      'ds_door': instance.dsDoor,
      'ds_bat': instance.dsBat,
      'ds_collect': instance.dsCollect,
      'ds_remoteCollect': instance.dsRemoteCollect,
      'mod_date': instance.modeDate,
      'hasError': instance.hasError,
    };
