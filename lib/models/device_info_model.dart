import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'device_info_model.freezed.dart';
part 'device_info_model.g.dart';

@freezed
class DeviceInfoModel with _$DeviceInfoModel {
  @JsonSerializable(explicitToJson: true)
  const factory DeviceInfoModel({
    @JsonKey(name: 'di_idx') required int diIdx,
    @JsonKey(name: 'di_name') required String diName,
    @JsonKey(name: 'di_lat') required double diLat,
    @JsonKey(name: 'di_lng') required double diLng,
    @JsonKey(name: 'di_ip') String? diIp,
    @JsonKey(name: 'di_nick_name') String? diNickname,
    @JsonKey(name: 'mod_date') required String modDate,
  }) = _DeviceInfoModel;

  factory DeviceInfoModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoModelFromJson(json);

  factory DeviceInfoModel.empty() => const DeviceInfoModel(
        diIdx: 0,
        diName: '',
        diLat: 0,
        diLng: 0,
        diIp: '',
        modDate: '',
      );
}
