import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'alarm_data_model.freezed.dart';
part 'alarm_data_model.g.dart';

@freezed
class AlarmDataModel with _$AlarmDataModel {
  const factory AlarmDataModel({
    @JsonKey(name: 'ad_idx') required int adIdx,
    @JsonKey(name: 'di_idx') required int diIdx,
    @JsonKey(name: 'ac_idx') required int acIdx,
    @JsonKey(name: 'reg_date') required String regDate,
  }) = _AlarmDataModel;

  factory AlarmDataModel.fromJson(Map<String, dynamic> json) =>
      _$AlarmDataModelFromJson(json);
}
