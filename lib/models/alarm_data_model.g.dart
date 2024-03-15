// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlarmDataModelImpl _$$AlarmDataModelImplFromJson(Map<String, dynamic> json) =>
    _$AlarmDataModelImpl(
      adIdx: json['ad_idx'] as int,
      diIdx: json['di_idx'] as int,
      acIdx: json['ac_idx'] as int,
      regDate: json['reg_date'] as String,
    );

Map<String, dynamic> _$$AlarmDataModelImplToJson(
        _$AlarmDataModelImpl instance) =>
    <String, dynamic>{
      'ad_idx': instance.adIdx,
      'di_idx': instance.diIdx,
      'ac_idx': instance.acIdx,
      'reg_date': instance.regDate,
    };
