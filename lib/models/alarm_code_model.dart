import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'alarm_code_model.g.dart';
part 'alarm_code_model.freezed.dart';

@freezed
class AlarmCodeModel with _$AlarmCodeModel {
  const factory AlarmCodeModel({
    @JsonKey(name: 'ac_idx') required int acIdx,
    @JsonKey(name: 'ac_name') required String acName,
    @JsonKey(name: 'reg_date') required String regDate,
  }) = _AlarmCodeModel;

  factory AlarmCodeModel.fromJson(Map<String, dynamic> json) =>
      _$AlarmCodeModelFromJson(json);
}
