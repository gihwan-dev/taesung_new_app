// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      wdIdx: json['wd_idx'] as int,
      diIdx: json['di_idx'] as int?,
      wdTemp: (json['wd_temp'] as num?)?.toDouble(),
      wdHumi: (json['wd_humi'] as num?)?.toDouble(),
      wdWdd: json['wd_wdd'] as int?,
      wdWds: (json['wd_wds'] as num?)?.toDouble(),
      regDate: json['reg_date'] as String,
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'wd_idx': instance.wdIdx,
      'di_idx': instance.diIdx,
      'wd_temp': instance.wdTemp,
      'wd_humi': instance.wdHumi,
      'wd_wdd': instance.wdWdd,
      'wd_wds': instance.wdWds,
      'reg_date': instance.regDate,
    };
