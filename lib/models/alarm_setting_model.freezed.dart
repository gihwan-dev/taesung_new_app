// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm_setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlarmSettingModel _$AlarmSettingModelFromJson(Map<String, dynamic> json) {
  return _AlarmSettingModel.fromJson(json);
}

/// @nodoc
mixin _$AlarmSettingModel {
  @JsonKey(name: 'as_idx')
  int get asIdx => throw _privateConstructorUsedError;
  @JsonKey(name: 'di_idx')
  int get diIdx => throw _privateConstructorUsedError;
  @JsonKey(name: 'as_batSet')
  int get asBatSet => throw _privateConstructorUsedError;
  @JsonKey(name: 'as_ouSet')
  int get asOuSet => throw _privateConstructorUsedError;
  @JsonKey(name: 'mod_date')
  DateTime get modDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlarmSettingModelCopyWith<AlarmSettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmSettingModelCopyWith<$Res> {
  factory $AlarmSettingModelCopyWith(
          AlarmSettingModel value, $Res Function(AlarmSettingModel) then) =
      _$AlarmSettingModelCopyWithImpl<$Res, AlarmSettingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'as_idx') int asIdx,
      @JsonKey(name: 'di_idx') int diIdx,
      @JsonKey(name: 'as_batSet') int asBatSet,
      @JsonKey(name: 'as_ouSet') int asOuSet,
      @JsonKey(name: 'mod_date') DateTime modDate});
}

/// @nodoc
class _$AlarmSettingModelCopyWithImpl<$Res, $Val extends AlarmSettingModel>
    implements $AlarmSettingModelCopyWith<$Res> {
  _$AlarmSettingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asIdx = null,
    Object? diIdx = null,
    Object? asBatSet = null,
    Object? asOuSet = null,
    Object? modDate = null,
  }) {
    return _then(_value.copyWith(
      asIdx: null == asIdx
          ? _value.asIdx
          : asIdx // ignore: cast_nullable_to_non_nullable
              as int,
      diIdx: null == diIdx
          ? _value.diIdx
          : diIdx // ignore: cast_nullable_to_non_nullable
              as int,
      asBatSet: null == asBatSet
          ? _value.asBatSet
          : asBatSet // ignore: cast_nullable_to_non_nullable
              as int,
      asOuSet: null == asOuSet
          ? _value.asOuSet
          : asOuSet // ignore: cast_nullable_to_non_nullable
              as int,
      modDate: null == modDate
          ? _value.modDate
          : modDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlarmSettingModelImplCopyWith<$Res>
    implements $AlarmSettingModelCopyWith<$Res> {
  factory _$$AlarmSettingModelImplCopyWith(_$AlarmSettingModelImpl value,
          $Res Function(_$AlarmSettingModelImpl) then) =
      __$$AlarmSettingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'as_idx') int asIdx,
      @JsonKey(name: 'di_idx') int diIdx,
      @JsonKey(name: 'as_batSet') int asBatSet,
      @JsonKey(name: 'as_ouSet') int asOuSet,
      @JsonKey(name: 'mod_date') DateTime modDate});
}

/// @nodoc
class __$$AlarmSettingModelImplCopyWithImpl<$Res>
    extends _$AlarmSettingModelCopyWithImpl<$Res, _$AlarmSettingModelImpl>
    implements _$$AlarmSettingModelImplCopyWith<$Res> {
  __$$AlarmSettingModelImplCopyWithImpl(_$AlarmSettingModelImpl _value,
      $Res Function(_$AlarmSettingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asIdx = null,
    Object? diIdx = null,
    Object? asBatSet = null,
    Object? asOuSet = null,
    Object? modDate = null,
  }) {
    return _then(_$AlarmSettingModelImpl(
      asIdx: null == asIdx
          ? _value.asIdx
          : asIdx // ignore: cast_nullable_to_non_nullable
              as int,
      diIdx: null == diIdx
          ? _value.diIdx
          : diIdx // ignore: cast_nullable_to_non_nullable
              as int,
      asBatSet: null == asBatSet
          ? _value.asBatSet
          : asBatSet // ignore: cast_nullable_to_non_nullable
              as int,
      asOuSet: null == asOuSet
          ? _value.asOuSet
          : asOuSet // ignore: cast_nullable_to_non_nullable
              as int,
      modDate: null == modDate
          ? _value.modDate
          : modDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlarmSettingModelImpl implements _AlarmSettingModel {
  const _$AlarmSettingModelImpl(
      {@JsonKey(name: 'as_idx') required this.asIdx,
      @JsonKey(name: 'di_idx') required this.diIdx,
      @JsonKey(name: 'as_batSet') required this.asBatSet,
      @JsonKey(name: 'as_ouSet') required this.asOuSet,
      @JsonKey(name: 'mod_date') required this.modDate});

  factory _$AlarmSettingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlarmSettingModelImplFromJson(json);

  @override
  @JsonKey(name: 'as_idx')
  final int asIdx;
  @override
  @JsonKey(name: 'di_idx')
  final int diIdx;
  @override
  @JsonKey(name: 'as_batSet')
  final int asBatSet;
  @override
  @JsonKey(name: 'as_ouSet')
  final int asOuSet;
  @override
  @JsonKey(name: 'mod_date')
  final DateTime modDate;

  @override
  String toString() {
    return 'AlarmSettingModel(asIdx: $asIdx, diIdx: $diIdx, asBatSet: $asBatSet, asOuSet: $asOuSet, modDate: $modDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlarmSettingModelImpl &&
            (identical(other.asIdx, asIdx) || other.asIdx == asIdx) &&
            (identical(other.diIdx, diIdx) || other.diIdx == diIdx) &&
            (identical(other.asBatSet, asBatSet) ||
                other.asBatSet == asBatSet) &&
            (identical(other.asOuSet, asOuSet) || other.asOuSet == asOuSet) &&
            (identical(other.modDate, modDate) || other.modDate == modDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, asIdx, diIdx, asBatSet, asOuSet, modDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlarmSettingModelImplCopyWith<_$AlarmSettingModelImpl> get copyWith =>
      __$$AlarmSettingModelImplCopyWithImpl<_$AlarmSettingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlarmSettingModelImplToJson(
      this,
    );
  }
}

abstract class _AlarmSettingModel implements AlarmSettingModel {
  const factory _AlarmSettingModel(
          {@JsonKey(name: 'as_idx') required final int asIdx,
          @JsonKey(name: 'di_idx') required final int diIdx,
          @JsonKey(name: 'as_batSet') required final int asBatSet,
          @JsonKey(name: 'as_ouSet') required final int asOuSet,
          @JsonKey(name: 'mod_date') required final DateTime modDate}) =
      _$AlarmSettingModelImpl;

  factory _AlarmSettingModel.fromJson(Map<String, dynamic> json) =
      _$AlarmSettingModelImpl.fromJson;

  @override
  @JsonKey(name: 'as_idx')
  int get asIdx;
  @override
  @JsonKey(name: 'di_idx')
  int get diIdx;
  @override
  @JsonKey(name: 'as_batSet')
  int get asBatSet;
  @override
  @JsonKey(name: 'as_ouSet')
  int get asOuSet;
  @override
  @JsonKey(name: 'mod_date')
  DateTime get modDate;
  @override
  @JsonKey(ignore: true)
  _$$AlarmSettingModelImplCopyWith<_$AlarmSettingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
