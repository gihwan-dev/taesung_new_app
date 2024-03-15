// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlarmDataModel _$AlarmDataModelFromJson(Map<String, dynamic> json) {
  return _AlarmDataModel.fromJson(json);
}

/// @nodoc
mixin _$AlarmDataModel {
  @JsonKey(name: 'ad_idx')
  int get adIdx => throw _privateConstructorUsedError;
  @JsonKey(name: 'di_idx')
  int get diIdx => throw _privateConstructorUsedError;
  @JsonKey(name: 'ac_idx')
  int get acIdx => throw _privateConstructorUsedError;
  @JsonKey(name: 'reg_date')
  String get regDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlarmDataModelCopyWith<AlarmDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmDataModelCopyWith<$Res> {
  factory $AlarmDataModelCopyWith(
          AlarmDataModel value, $Res Function(AlarmDataModel) then) =
      _$AlarmDataModelCopyWithImpl<$Res, AlarmDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ad_idx') int adIdx,
      @JsonKey(name: 'di_idx') int diIdx,
      @JsonKey(name: 'ac_idx') int acIdx,
      @JsonKey(name: 'reg_date') String regDate});
}

/// @nodoc
class _$AlarmDataModelCopyWithImpl<$Res, $Val extends AlarmDataModel>
    implements $AlarmDataModelCopyWith<$Res> {
  _$AlarmDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adIdx = null,
    Object? diIdx = null,
    Object? acIdx = null,
    Object? regDate = null,
  }) {
    return _then(_value.copyWith(
      adIdx: null == adIdx
          ? _value.adIdx
          : adIdx // ignore: cast_nullable_to_non_nullable
              as int,
      diIdx: null == diIdx
          ? _value.diIdx
          : diIdx // ignore: cast_nullable_to_non_nullable
              as int,
      acIdx: null == acIdx
          ? _value.acIdx
          : acIdx // ignore: cast_nullable_to_non_nullable
              as int,
      regDate: null == regDate
          ? _value.regDate
          : regDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlarmDataModelImplCopyWith<$Res>
    implements $AlarmDataModelCopyWith<$Res> {
  factory _$$AlarmDataModelImplCopyWith(_$AlarmDataModelImpl value,
          $Res Function(_$AlarmDataModelImpl) then) =
      __$$AlarmDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ad_idx') int adIdx,
      @JsonKey(name: 'di_idx') int diIdx,
      @JsonKey(name: 'ac_idx') int acIdx,
      @JsonKey(name: 'reg_date') String regDate});
}

/// @nodoc
class __$$AlarmDataModelImplCopyWithImpl<$Res>
    extends _$AlarmDataModelCopyWithImpl<$Res, _$AlarmDataModelImpl>
    implements _$$AlarmDataModelImplCopyWith<$Res> {
  __$$AlarmDataModelImplCopyWithImpl(
      _$AlarmDataModelImpl _value, $Res Function(_$AlarmDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adIdx = null,
    Object? diIdx = null,
    Object? acIdx = null,
    Object? regDate = null,
  }) {
    return _then(_$AlarmDataModelImpl(
      adIdx: null == adIdx
          ? _value.adIdx
          : adIdx // ignore: cast_nullable_to_non_nullable
              as int,
      diIdx: null == diIdx
          ? _value.diIdx
          : diIdx // ignore: cast_nullable_to_non_nullable
              as int,
      acIdx: null == acIdx
          ? _value.acIdx
          : acIdx // ignore: cast_nullable_to_non_nullable
              as int,
      regDate: null == regDate
          ? _value.regDate
          : regDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlarmDataModelImpl
    with DiagnosticableTreeMixin
    implements _AlarmDataModel {
  const _$AlarmDataModelImpl(
      {@JsonKey(name: 'ad_idx') required this.adIdx,
      @JsonKey(name: 'di_idx') required this.diIdx,
      @JsonKey(name: 'ac_idx') required this.acIdx,
      @JsonKey(name: 'reg_date') required this.regDate});

  factory _$AlarmDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlarmDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'ad_idx')
  final int adIdx;
  @override
  @JsonKey(name: 'di_idx')
  final int diIdx;
  @override
  @JsonKey(name: 'ac_idx')
  final int acIdx;
  @override
  @JsonKey(name: 'reg_date')
  final String regDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AlarmDataModel(adIdx: $adIdx, diIdx: $diIdx, acIdx: $acIdx, regDate: $regDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AlarmDataModel'))
      ..add(DiagnosticsProperty('adIdx', adIdx))
      ..add(DiagnosticsProperty('diIdx', diIdx))
      ..add(DiagnosticsProperty('acIdx', acIdx))
      ..add(DiagnosticsProperty('regDate', regDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlarmDataModelImpl &&
            (identical(other.adIdx, adIdx) || other.adIdx == adIdx) &&
            (identical(other.diIdx, diIdx) || other.diIdx == diIdx) &&
            (identical(other.acIdx, acIdx) || other.acIdx == acIdx) &&
            (identical(other.regDate, regDate) || other.regDate == regDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, adIdx, diIdx, acIdx, regDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlarmDataModelImplCopyWith<_$AlarmDataModelImpl> get copyWith =>
      __$$AlarmDataModelImplCopyWithImpl<_$AlarmDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlarmDataModelImplToJson(
      this,
    );
  }
}

abstract class _AlarmDataModel implements AlarmDataModel {
  const factory _AlarmDataModel(
          {@JsonKey(name: 'ad_idx') required final int adIdx,
          @JsonKey(name: 'di_idx') required final int diIdx,
          @JsonKey(name: 'ac_idx') required final int acIdx,
          @JsonKey(name: 'reg_date') required final String regDate}) =
      _$AlarmDataModelImpl;

  factory _AlarmDataModel.fromJson(Map<String, dynamic> json) =
      _$AlarmDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'ad_idx')
  int get adIdx;
  @override
  @JsonKey(name: 'di_idx')
  int get diIdx;
  @override
  @JsonKey(name: 'ac_idx')
  int get acIdx;
  @override
  @JsonKey(name: 'reg_date')
  String get regDate;
  @override
  @JsonKey(ignore: true)
  _$$AlarmDataModelImplCopyWith<_$AlarmDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
