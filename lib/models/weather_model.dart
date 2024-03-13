import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'weather_model.g.dart';
part 'weather_model.freezed.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    @JsonKey(name: 'wd_idx') required int wdIdx,
    @JsonKey(name: 'di_idx') int? diIdx,
    @JsonKey(name: 'wd_temp') double? wdTemp,
    @JsonKey(name: 'wd_humi') double? wdHumi,
    @JsonKey(name: 'wd_wdd') int? wdWdd,
    @JsonKey(name: 'wd_wds') double? wdWds,
    @JsonKey(name: 'reg_date') required String regDate,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  factory WeatherModel.empty() => const WeatherModel(
        wdIdx: 0,
        regDate: '',
      );
}
