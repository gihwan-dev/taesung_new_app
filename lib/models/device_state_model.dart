import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'device_state_model.freezed.dart';
part 'device_state_model.g.dart';

@freezed
class DeviceStateModel with _$DeviceStateModel {
  const factory DeviceStateModel({
    @JsonKey(name: 'ds_idx') required int dsIdx,
    @JsonKey(name: 'di_idx') required int diIdx,
    @JsonKey(name: 'ds_door') required int dsDoor,
    @JsonKey(name: 'ds_bat') required int dsBat,
    @JsonKey(name: 'ds_collect') required int dsCollect,
    @JsonKey(name: 'ds_remoteCollect') required int dsRemoteCollect,
    @JsonKey(name: 'mod_date') required String modeDate,
    @Default(false) bool hasError,
  }) = _DeviceStateModel;

  factory DeviceStateModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceStateModelFromJson(json);

  factory DeviceStateModel.empty() {
    return const DeviceStateModel(
      dsIdx: 0,
      diIdx: 0,
      dsDoor: 0,
      dsBat: 0,
      dsCollect: 0,
      dsRemoteCollect: 0,
      modeDate: '',
      hasError: false,
    );
  }
}
