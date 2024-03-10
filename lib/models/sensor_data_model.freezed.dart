// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sensor_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SensorDataModel _$SensorDataModelFromJson(Map<String, dynamic> json) {
  return _SensorDataModel.fromJson(json);
}

/// @nodoc
mixin _$SensorDataModel {
  @JsonKey(name: 'sd_idx')
  int get sdIdx => throw _privateConstructorUsedError;
  @JsonKey(name: 'di_idx')
  int get diIdx => throw _privateConstructorUsedError;
  @JsonKey(name: 'sd_mos')
  double get sdMos => throw _privateConstructorUsedError;
  @JsonKey(name: 'sd_ou')
  int get sdOu => throw _privateConstructorUsedError;
  @JsonKey(name: 'reg_date')
  String get regDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SensorDataModelCopyWith<SensorDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensorDataModelCopyWith<$Res> {
  factory $SensorDataModelCopyWith(
          SensorDataModel value, $Res Function(SensorDataModel) then) =
      _$SensorDataModelCopyWithImpl<$Res, SensorDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sd_idx') int sdIdx,
      @JsonKey(name: 'di_idx') int diIdx,
      @JsonKey(name: 'sd_mos') double sdMos,
      @JsonKey(name: 'sd_ou') int sdOu,
      @JsonKey(name: 'reg_date') String regDate});
}

/// @nodoc
class _$SensorDataModelCopyWithImpl<$Res, $Val extends SensorDataModel>
    implements $SensorDataModelCopyWith<$Res> {
  _$SensorDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sdIdx = null,
    Object? diIdx = null,
    Object? sdMos = null,
    Object? sdOu = null,
    Object? regDate = null,
  }) {
    return _then(_value.copyWith(
      sdIdx: null == sdIdx
          ? _value.sdIdx
          : sdIdx // ignore: cast_nullable_to_non_nullable
              as int,
      diIdx: null == diIdx
          ? _value.diIdx
          : diIdx // ignore: cast_nullable_to_non_nullable
              as int,
      sdMos: null == sdMos
          ? _value.sdMos
          : sdMos // ignore: cast_nullable_to_non_nullable
              as double,
      sdOu: null == sdOu
          ? _value.sdOu
          : sdOu // ignore: cast_nullable_to_non_nullable
              as int,
      regDate: null == regDate
          ? _value.regDate
          : regDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SensorDataModelImplCopyWith<$Res>
    implements $SensorDataModelCopyWith<$Res> {
  factory _$$SensorDataModelImplCopyWith(_$SensorDataModelImpl value,
          $Res Function(_$SensorDataModelImpl) then) =
      __$$SensorDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sd_idx') int sdIdx,
      @JsonKey(name: 'di_idx') int diIdx,
      @JsonKey(name: 'sd_mos') double sdMos,
      @JsonKey(name: 'sd_ou') int sdOu,
      @JsonKey(name: 'reg_date') String regDate});
}

/// @nodoc
class __$$SensorDataModelImplCopyWithImpl<$Res>
    extends _$SensorDataModelCopyWithImpl<$Res, _$SensorDataModelImpl>
    implements _$$SensorDataModelImplCopyWith<$Res> {
  __$$SensorDataModelImplCopyWithImpl(
      _$SensorDataModelImpl _value, $Res Function(_$SensorDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sdIdx = null,
    Object? diIdx = null,
    Object? sdMos = null,
    Object? sdOu = null,
    Object? regDate = null,
  }) {
    return _then(_$SensorDataModelImpl(
      sdIdx: null == sdIdx
          ? _value.sdIdx
          : sdIdx // ignore: cast_nullable_to_non_nullable
              as int,
      diIdx: null == diIdx
          ? _value.diIdx
          : diIdx // ignore: cast_nullable_to_non_nullable
              as int,
      sdMos: null == sdMos
          ? _value.sdMos
          : sdMos // ignore: cast_nullable_to_non_nullable
              as double,
      sdOu: null == sdOu
          ? _value.sdOu
          : sdOu // ignore: cast_nullable_to_non_nullable
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
class _$SensorDataModelImpl
    with DiagnosticableTreeMixin
    implements _SensorDataModel {
  const _$SensorDataModelImpl(
      {@JsonKey(name: 'sd_idx') required this.sdIdx,
      @JsonKey(name: 'di_idx') required this.diIdx,
      @JsonKey(name: 'sd_mos') required this.sdMos,
      @JsonKey(name: 'sd_ou') required this.sdOu,
      @JsonKey(name: 'reg_date') required this.regDate});

  factory _$SensorDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SensorDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'sd_idx')
  final int sdIdx;
  @override
  @JsonKey(name: 'di_idx')
  final int diIdx;
  @override
  @JsonKey(name: 'sd_mos')
  final double sdMos;
  @override
  @JsonKey(name: 'sd_ou')
  final int sdOu;
  @override
  @JsonKey(name: 'reg_date')
  final String regDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SensorDataModel(sdIdx: $sdIdx, diIdx: $diIdx, sdMos: $sdMos, sdOu: $sdOu, regDate: $regDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SensorDataModel'))
      ..add(DiagnosticsProperty('sdIdx', sdIdx))
      ..add(DiagnosticsProperty('diIdx', diIdx))
      ..add(DiagnosticsProperty('sdMos', sdMos))
      ..add(DiagnosticsProperty('sdOu', sdOu))
      ..add(DiagnosticsProperty('regDate', regDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SensorDataModelImpl &&
            (identical(other.sdIdx, sdIdx) || other.sdIdx == sdIdx) &&
            (identical(other.diIdx, diIdx) || other.diIdx == diIdx) &&
            (identical(other.sdMos, sdMos) || other.sdMos == sdMos) &&
            (identical(other.sdOu, sdOu) || other.sdOu == sdOu) &&
            (identical(other.regDate, regDate) || other.regDate == regDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sdIdx, diIdx, sdMos, sdOu, regDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SensorDataModelImplCopyWith<_$SensorDataModelImpl> get copyWith =>
      __$$SensorDataModelImplCopyWithImpl<_$SensorDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SensorDataModelImplToJson(
      this,
    );
  }
}

abstract class _SensorDataModel implements SensorDataModel {
  const factory _SensorDataModel(
          {@JsonKey(name: 'sd_idx') required final int sdIdx,
          @JsonKey(name: 'di_idx') required final int diIdx,
          @JsonKey(name: 'sd_mos') required final double sdMos,
          @JsonKey(name: 'sd_ou') required final int sdOu,
          @JsonKey(name: 'reg_date') required final String regDate}) =
      _$SensorDataModelImpl;

  factory _SensorDataModel.fromJson(Map<String, dynamic> json) =
      _$SensorDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'sd_idx')
  int get sdIdx;
  @override
  @JsonKey(name: 'di_idx')
  int get diIdx;
  @override
  @JsonKey(name: 'sd_mos')
  double get sdMos;
  @override
  @JsonKey(name: 'sd_ou')
  int get sdOu;
  @override
  @JsonKey(name: 'reg_date')
  String get regDate;
  @override
  @JsonKey(ignore: true)
  _$$SensorDataModelImplCopyWith<_$SensorDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
