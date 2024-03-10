// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SensorDataModelImpl _$$SensorDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SensorDataModelImpl(
      sdIdx: json['sd_idx'] as int,
      diIdx: json['di_idx'] as int,
      sdMos: (json['sd_mos'] as num).toDouble(),
      sdOu: json['sd_ou'] as int,
      regDate: json['reg_date'] as String,
    );

Map<String, dynamic> _$$SensorDataModelImplToJson(
        _$SensorDataModelImpl instance) =>
    <String, dynamic>{
      'sd_idx': instance.sdIdx,
      'di_idx': instance.diIdx,
      'sd_mos': instance.sdMos,
      'sd_ou': instance.sdOu,
      'reg_date': instance.regDate,
    };
