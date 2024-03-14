// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceInfoModelImpl _$$DeviceInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceInfoModelImpl(
      diIdx: json['di_idx'] as int,
      diName: json['di_name'] as String,
      diLat: (json['di_lat'] as num).toDouble(),
      diLng: (json['di_lng'] as num).toDouble(),
      diIp: json['di_ip'] as String?,
      diNickname: json['di_nick_name'] as String?,
      modDate: json['mod_date'] as String,
    );

Map<String, dynamic> _$$DeviceInfoModelImplToJson(
        _$DeviceInfoModelImpl instance) =>
    <String, dynamic>{
      'di_idx': instance.diIdx,
      'di_name': instance.diName,
      'di_lat': instance.diLat,
      'di_lng': instance.diLng,
      'di_ip': instance.diIp,
      'di_nick_name': instance.diNickname,
      'mod_date': instance.modDate,
    };
