// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceSettingModel _$DeviceSettingModelFromJson(Map<String, dynamic> json) {
  return _DeviceSettingModel.fromJson(json);
}

/// @nodoc
mixin _$DeviceSettingModel {
  @JsonKey(name: 'des_idx')
  int get desIdx => throw _privateConstructorUsedError;
  @JsonKey(name: 'di_idx')
  int? get diIdx => throw _privateConstructorUsedError;
  @JsonKey(name: 'des_ouOver')
  int? get desOuOver => throw _privateConstructorUsedError;
  @JsonKey(name: 'des_delayTime')
  int? get desDelayTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'mod_date')
  String? get modDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceSettingModelCopyWith<DeviceSettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceSettingModelCopyWith<$Res> {
  factory $DeviceSettingModelCopyWith(
          DeviceSettingModel value, $Res Function(DeviceSettingModel) then) =
      _$DeviceSettingModelCopyWithImpl<$Res, DeviceSettingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'des_idx') int desIdx,
      @JsonKey(name: 'di_idx') int? diIdx,
      @JsonKey(name: 'des_ouOver') int? desOuOver,
      @JsonKey(name: 'des_delayTime') int? desDelayTime,
      @JsonKey(name: 'mod_date') String? modDate});
}

/// @nodoc
class _$DeviceSettingModelCopyWithImpl<$Res, $Val extends DeviceSettingModel>
    implements $DeviceSettingModelCopyWith<$Res> {
  _$DeviceSettingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desIdx = null,
    Object? diIdx = freezed,
    Object? desOuOver = freezed,
    Object? desDelayTime = freezed,
    Object? modDate = freezed,
  }) {
    return _then(_value.copyWith(
      desIdx: null == desIdx
          ? _value.desIdx
          : desIdx // ignore: cast_nullable_to_non_nullable
              as int,
      diIdx: freezed == diIdx
          ? _value.diIdx
          : diIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      desOuOver: freezed == desOuOver
          ? _value.desOuOver
          : desOuOver // ignore: cast_nullable_to_non_nullable
              as int?,
      desDelayTime: freezed == desDelayTime
          ? _value.desDelayTime
          : desDelayTime // ignore: cast_nullable_to_non_nullable
              as int?,
      modDate: freezed == modDate
          ? _value.modDate
          : modDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceSettingModelImplCopyWith<$Res>
    implements $DeviceSettingModelCopyWith<$Res> {
  factory _$$DeviceSettingModelImplCopyWith(_$DeviceSettingModelImpl value,
          $Res Function(_$DeviceSettingModelImpl) then) =
      __$$DeviceSettingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'des_idx') int desIdx,
      @JsonKey(name: 'di_idx') int? diIdx,
      @JsonKey(name: 'des_ouOver') int? desOuOver,
      @JsonKey(name: 'des_delayTime') int? desDelayTime,
      @JsonKey(name: 'mod_date') String? modDate});
}

/// @nodoc
class __$$DeviceSettingModelImplCopyWithImpl<$Res>
    extends _$DeviceSettingModelCopyWithImpl<$Res, _$DeviceSettingModelImpl>
    implements _$$DeviceSettingModelImplCopyWith<$Res> {
  __$$DeviceSettingModelImplCopyWithImpl(_$DeviceSettingModelImpl _value,
      $Res Function(_$DeviceSettingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desIdx = null,
    Object? diIdx = freezed,
    Object? desOuOver = freezed,
    Object? desDelayTime = freezed,
    Object? modDate = freezed,
  }) {
    return _then(_$DeviceSettingModelImpl(
      desIdx: null == desIdx
          ? _value.desIdx
          : desIdx // ignore: cast_nullable_to_non_nullable
              as int,
      diIdx: freezed == diIdx
          ? _value.diIdx
          : diIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      desOuOver: freezed == desOuOver
          ? _value.desOuOver
          : desOuOver // ignore: cast_nullable_to_non_nullable
              as int?,
      desDelayTime: freezed == desDelayTime
          ? _value.desDelayTime
          : desDelayTime // ignore: cast_nullable_to_non_nullable
              as int?,
      modDate: freezed == modDate
          ? _value.modDate
          : modDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceSettingModelImpl implements _DeviceSettingModel {
  const _$DeviceSettingModelImpl(
      {@JsonKey(name: 'des_idx') required this.desIdx,
      @JsonKey(name: 'di_idx') this.diIdx,
      @JsonKey(name: 'des_ouOver') this.desOuOver,
      @JsonKey(name: 'des_delayTime') this.desDelayTime,
      @JsonKey(name: 'mod_date') this.modDate});

  factory _$DeviceSettingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceSettingModelImplFromJson(json);

  @override
  @JsonKey(name: 'des_idx')
  final int desIdx;
  @override
  @JsonKey(name: 'di_idx')
  final int? diIdx;
  @override
  @JsonKey(name: 'des_ouOver')
  final int? desOuOver;
  @override
  @JsonKey(name: 'des_delayTime')
  final int? desDelayTime;
  @override
  @JsonKey(name: 'mod_date')
  final String? modDate;

  @override
  String toString() {
    return 'DeviceSettingModel(desIdx: $desIdx, diIdx: $diIdx, desOuOver: $desOuOver, desDelayTime: $desDelayTime, modDate: $modDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceSettingModelImpl &&
            (identical(other.desIdx, desIdx) || other.desIdx == desIdx) &&
            (identical(other.diIdx, diIdx) || other.diIdx == diIdx) &&
            (identical(other.desOuOver, desOuOver) ||
                other.desOuOver == desOuOver) &&
            (identical(other.desDelayTime, desDelayTime) ||
                other.desDelayTime == desDelayTime) &&
            (identical(other.modDate, modDate) || other.modDate == modDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, desIdx, diIdx, desOuOver, desDelayTime, modDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceSettingModelImplCopyWith<_$DeviceSettingModelImpl> get copyWith =>
      __$$DeviceSettingModelImplCopyWithImpl<_$DeviceSettingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceSettingModelImplToJson(
      this,
    );
  }
}

abstract class _DeviceSettingModel implements DeviceSettingModel {
  const factory _DeviceSettingModel(
          {@JsonKey(name: 'des_idx') required final int desIdx,
          @JsonKey(name: 'di_idx') final int? diIdx,
          @JsonKey(name: 'des_ouOver') final int? desOuOver,
          @JsonKey(name: 'des_delayTime') final int? desDelayTime,
          @JsonKey(name: 'mod_date') final String? modDate}) =
      _$DeviceSettingModelImpl;

  factory _DeviceSettingModel.fromJson(Map<String, dynamic> json) =
      _$DeviceSettingModelImpl.fromJson;

  @override
  @JsonKey(name: 'des_idx')
  int get desIdx;
  @override
  @JsonKey(name: 'di_idx')
  int? get diIdx;
  @override
  @JsonKey(name: 'des_ouOver')
  int? get desOuOver;
  @override
  @JsonKey(name: 'des_delayTime')
  int? get desDelayTime;
  @override
  @JsonKey(name: 'mod_date')
  String? get modDate;
  @override
  @JsonKey(ignore: true)
  _$$DeviceSettingModelImplCopyWith<_$DeviceSettingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
