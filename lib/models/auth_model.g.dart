// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthModelImpl _$$AuthModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthModelImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      confirmPassword: json['confirmPassword'] as String,
      signUpStatus: $enumDecode(_$SignUpStatusEnumMap, json['signUpStatus']),
    );

Map<String, dynamic> _$$AuthModelImplToJson(_$AuthModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'signUpStatus': _$SignUpStatusEnumMap[instance.signUpStatus]!,
    };

const _$SignUpStatusEnumMap = {
  SignUpStatus.initial: 'initial',
  SignUpStatus.success: 'success',
  SignUpStatus.fail: 'fail',
};
