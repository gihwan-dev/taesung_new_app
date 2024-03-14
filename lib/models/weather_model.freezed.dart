// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  @JsonKey(name: 'wd_idx')
  int get wdIdx => throw _privateConstructorUsedError;
  @JsonKey(name: 'di_idx')
  int? get diIdx => throw _privateConstructorUsedError;
  @JsonKey(name: 'wd_temp')
  double? get wdTemp => throw _privateConstructorUsedError;
  @JsonKey(name: 'wd_humi')
  double? get wdHumi => throw _privateConstructorUsedError;
  @JsonKey(name: 'wd_wdd')
  int? get wdWdd => throw _privateConstructorUsedError;
  @JsonKey(name: 'wd_wds')
  double? get wdWds => throw _privateConstructorUsedError;
  @JsonKey(name: 'reg_date')
  String get regDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'wd_idx') int wdIdx,
      @JsonKey(name: 'di_idx') int? diIdx,
      @JsonKey(name: 'wd_temp') double? wdTemp,
      @JsonKey(name: 'wd_humi') double? wdHumi,
      @JsonKey(name: 'wd_wdd') int? wdWdd,
      @JsonKey(name: 'wd_wds') double? wdWds,
      @JsonKey(name: 'reg_date') String regDate});
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wdIdx = null,
    Object? diIdx = freezed,
    Object? wdTemp = freezed,
    Object? wdHumi = freezed,
    Object? wdWdd = freezed,
    Object? wdWds = freezed,
    Object? regDate = null,
  }) {
    return _then(_value.copyWith(
      wdIdx: null == wdIdx
          ? _value.wdIdx
          : wdIdx // ignore: cast_nullable_to_non_nullable
              as int,
      diIdx: freezed == diIdx
          ? _value.diIdx
          : diIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      wdTemp: freezed == wdTemp
          ? _value.wdTemp
          : wdTemp // ignore: cast_nullable_to_non_nullable
              as double?,
      wdHumi: freezed == wdHumi
          ? _value.wdHumi
          : wdHumi // ignore: cast_nullable_to_non_nullable
              as double?,
      wdWdd: freezed == wdWdd
          ? _value.wdWdd
          : wdWdd // ignore: cast_nullable_to_non_nullable
              as int?,
      wdWds: freezed == wdWds
          ? _value.wdWds
          : wdWds // ignore: cast_nullable_to_non_nullable
              as double?,
      regDate: null == regDate
          ? _value.regDate
          : regDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
          _$WeatherModelImpl value, $Res Function(_$WeatherModelImpl) then) =
      __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'wd_idx') int wdIdx,
      @JsonKey(name: 'di_idx') int? diIdx,
      @JsonKey(name: 'wd_temp') double? wdTemp,
      @JsonKey(name: 'wd_humi') double? wdHumi,
      @JsonKey(name: 'wd_wdd') int? wdWdd,
      @JsonKey(name: 'wd_wds') double? wdWds,
      @JsonKey(name: 'reg_date') String regDate});
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
      _$WeatherModelImpl _value, $Res Function(_$WeatherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wdIdx = null,
    Object? diIdx = freezed,
    Object? wdTemp = freezed,
    Object? wdHumi = freezed,
    Object? wdWdd = freezed,
    Object? wdWds = freezed,
    Object? regDate = null,
  }) {
    return _then(_$WeatherModelImpl(
      wdIdx: null == wdIdx
          ? _value.wdIdx
          : wdIdx // ignore: cast_nullable_to_non_nullable
              as int,
      diIdx: freezed == diIdx
          ? _value.diIdx
          : diIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      wdTemp: freezed == wdTemp
          ? _value.wdTemp
          : wdTemp // ignore: cast_nullable_to_non_nullable
              as double?,
      wdHumi: freezed == wdHumi
          ? _value.wdHumi
          : wdHumi // ignore: cast_nullable_to_non_nullable
              as double?,
      wdWdd: freezed == wdWdd
          ? _value.wdWdd
          : wdWdd // ignore: cast_nullable_to_non_nullable
              as int?,
      wdWds: freezed == wdWds
          ? _value.wdWds
          : wdWds // ignore: cast_nullable_to_non_nullable
              as double?,
      regDate: null == regDate
          ? _value.regDate
          : regDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl with DiagnosticableTreeMixin implements _WeatherModel {
  const _$WeatherModelImpl(
      {@JsonKey(name: 'wd_idx') required this.wdIdx,
      @JsonKey(name: 'di_idx') this.diIdx,
      @JsonKey(name: 'wd_temp') this.wdTemp,
      @JsonKey(name: 'wd_humi') this.wdHumi,
      @JsonKey(name: 'wd_wdd') this.wdWdd,
      @JsonKey(name: 'wd_wds') this.wdWds,
      @JsonKey(name: 'reg_date') required this.regDate});

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  @override
  @JsonKey(name: 'wd_idx')
  final int wdIdx;
  @override
  @JsonKey(name: 'di_idx')
  final int? diIdx;
  @override
  @JsonKey(name: 'wd_temp')
  final double? wdTemp;
  @override
  @JsonKey(name: 'wd_humi')
  final double? wdHumi;
  @override
  @JsonKey(name: 'wd_wdd')
  final int? wdWdd;
  @override
  @JsonKey(name: 'wd_wds')
  final double? wdWds;
  @override
  @JsonKey(name: 'reg_date')
  final String regDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherModel(wdIdx: $wdIdx, diIdx: $diIdx, wdTemp: $wdTemp, wdHumi: $wdHumi, wdWdd: $wdWdd, wdWds: $wdWds, regDate: $regDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherModel'))
      ..add(DiagnosticsProperty('wdIdx', wdIdx))
      ..add(DiagnosticsProperty('diIdx', diIdx))
      ..add(DiagnosticsProperty('wdTemp', wdTemp))
      ..add(DiagnosticsProperty('wdHumi', wdHumi))
      ..add(DiagnosticsProperty('wdWdd', wdWdd))
      ..add(DiagnosticsProperty('wdWds', wdWds))
      ..add(DiagnosticsProperty('regDate', regDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            (identical(other.wdIdx, wdIdx) || other.wdIdx == wdIdx) &&
            (identical(other.diIdx, diIdx) || other.diIdx == diIdx) &&
            (identical(other.wdTemp, wdTemp) || other.wdTemp == wdTemp) &&
            (identical(other.wdHumi, wdHumi) || other.wdHumi == wdHumi) &&
            (identical(other.wdWdd, wdWdd) || other.wdWdd == wdWdd) &&
            (identical(other.wdWds, wdWds) || other.wdWds == wdWds) &&
            (identical(other.regDate, regDate) || other.regDate == regDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, wdIdx, diIdx, wdTemp, wdHumi, wdWdd, wdWds, regDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel(
          {@JsonKey(name: 'wd_idx') required final int wdIdx,
          @JsonKey(name: 'di_idx') final int? diIdx,
          @JsonKey(name: 'wd_temp') final double? wdTemp,
          @JsonKey(name: 'wd_humi') final double? wdHumi,
          @JsonKey(name: 'wd_wdd') final int? wdWdd,
          @JsonKey(name: 'wd_wds') final double? wdWds,
          @JsonKey(name: 'reg_date') required final String regDate}) =
      _$WeatherModelImpl;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  @JsonKey(name: 'wd_idx')
  int get wdIdx;
  @override
  @JsonKey(name: 'di_idx')
  int? get diIdx;
  @override
  @JsonKey(name: 'wd_temp')
  double? get wdTemp;
  @override
  @JsonKey(name: 'wd_humi')
  double? get wdHumi;
  @override
  @JsonKey(name: 'wd_wdd')
  int? get wdWdd;
  @override
  @JsonKey(name: 'wd_wds')
  double? get wdWds;
  @override
  @JsonKey(name: 'reg_date')
  String get regDate;
  @override
  @JsonKey(ignore: true)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
