import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'sensor_data_model.freezed.dart';
part 'sensor_data_model.g.dart';

@freezed
class SensorDataModel with _$SensorDataModel {
  const factory SensorDataModel({
    @JsonKey(name: 'sd_idx') required int sdIdx,
    @JsonKey(name: 'di_idx') required int diIdx,
    @JsonKey(name: 'sd_mos') required double sdMos,
    @JsonKey(name: 'sd_ou') required int sdOu,
    @JsonKey(name: 'reg_date') required String regDate,
  }) = _SensorDataModel;

  factory SensorDataModel.fromJson(Map<String, dynamic> json) =>
      _$SensorDataModelFromJson(json);

  factory SensorDataModel.empty() {
    return const SensorDataModel(
      sdIdx: 0,
      diIdx: 0,
      sdMos: 0,
      sdOu: 0,
      regDate: '',
    );
  }
}
