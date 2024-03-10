import "package:freezed_annotation/freezed_annotation.dart";
import "package:flutter/foundation.dart";

part 'collect_code_model.freezed.dart';
part 'collect_code_model.g.dart';

@freezed
class CollectCodeModel with _$CollectCodeModel {
  const factory CollectCodeModel({
    @JsonKey(name: 'cc_idx') required int ccIdx,
    @JsonKey(name: 'cc_name') required String ccName,
    @JsonKey(name: 'reg_date') required String regDate,
  }) = _CollectCodeModel;

  factory CollectCodeModel.fromJson(Map<String, dynamic> json) =>
      _$CollectCodeModelFromJson(json);

  factory CollectCodeModel.empty() {
    return const CollectCodeModel(
      ccIdx: 0,
      ccName: '',
      regDate: '',
    );
  }
}
