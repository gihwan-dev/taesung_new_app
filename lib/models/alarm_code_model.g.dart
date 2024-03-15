// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_code_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlarmCodeModelImpl _$$AlarmCodeModelImplFromJson(Map<String, dynamic> json) =>
    _$AlarmCodeModelImpl(
      acIdx: json['ac_idx'] as int,
      acName: json['ac_name'] as String,
      regDate: json['reg_date'] as String,
    );

Map<String, dynamic> _$$AlarmCodeModelImplToJson(
        _$AlarmCodeModelImpl instance) =>
    <String, dynamic>{
      'ac_idx': instance.acIdx,
      'ac_name': instance.acName,
      'reg_date': instance.regDate,
    };
