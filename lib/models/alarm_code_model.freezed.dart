// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm_code_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlarmCodeModel _$AlarmCodeModelFromJson(Map<String, dynamic> json) {
  return _AlarmCodeModel.fromJson(json);
}

/// @nodoc
mixin _$AlarmCodeModel {
  @JsonKey(name: 'ac_idx')
  int get acIdx => throw _privateConstructorUsedError;
  @JsonKey(name: 'ac_name')
  String get acName => throw _privateConstructorUsedError;
  @JsonKey(name: 'reg_date')
  String get regDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlarmCodeModelCopyWith<AlarmCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmCodeModelCopyWith<$Res> {
  factory $AlarmCodeModelCopyWith(
          AlarmCodeModel value, $Res Function(AlarmCodeModel) then) =
      _$AlarmCodeModelCopyWithImpl<$Res, AlarmCodeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ac_idx') int acIdx,
      @JsonKey(name: 'ac_name') String acName,
      @JsonKey(name: 'reg_date') String regDate});
}

/// @nodoc
class _$AlarmCodeModelCopyWithImpl<$Res, $Val extends AlarmCodeModel>
    implements $AlarmCodeModelCopyWith<$Res> {
  _$AlarmCodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acIdx = null,
    Object? acName = null,
    Object? regDate = null,
  }) {
    return _then(_value.copyWith(
      acIdx: null == acIdx
          ? _value.acIdx
          : acIdx // ignore: cast_nullable_to_non_nullable
              as int,
      acName: null == acName
          ? _value.acName
          : acName // ignore: cast_nullable_to_non_nullable
              as String,
      regDate: null == regDate
          ? _value.regDate
          : regDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlarmCodeModelImplCopyWith<$Res>
    implements $AlarmCodeModelCopyWith<$Res> {
  factory _$$AlarmCodeModelImplCopyWith(_$AlarmCodeModelImpl value,
          $Res Function(_$AlarmCodeModelImpl) then) =
      __$$AlarmCodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ac_idx') int acIdx,
      @JsonKey(name: 'ac_name') String acName,
      @JsonKey(name: 'reg_date') String regDate});
}

/// @nodoc
class __$$AlarmCodeModelImplCopyWithImpl<$Res>
    extends _$AlarmCodeModelCopyWithImpl<$Res, _$AlarmCodeModelImpl>
    implements _$$AlarmCodeModelImplCopyWith<$Res> {
  __$$AlarmCodeModelImplCopyWithImpl(
      _$AlarmCodeModelImpl _value, $Res Function(_$AlarmCodeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acIdx = null,
    Object? acName = null,
    Object? regDate = null,
  }) {
    return _then(_$AlarmCodeModelImpl(
      acIdx: null == acIdx
          ? _value.acIdx
          : acIdx // ignore: cast_nullable_to_non_nullable
              as int,
      acName: null == acName
          ? _value.acName
          : acName // ignore: cast_nullable_to_non_nullable
              as String,
      regDate: null == regDate
          ? _value.regDate
          : regDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlarmCodeModelImpl
    with DiagnosticableTreeMixin
    implements _AlarmCodeModel {
  const _$AlarmCodeModelImpl(
      {@JsonKey(name: 'ac_idx') required this.acIdx,
      @JsonKey(name: 'ac_name') required this.acName,
      @JsonKey(name: 'reg_date') required this.regDate});

  factory _$AlarmCodeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlarmCodeModelImplFromJson(json);

  @override
  @JsonKey(name: 'ac_idx')
  final int acIdx;
  @override
  @JsonKey(name: 'ac_name')
  final String acName;
  @override
  @JsonKey(name: 'reg_date')
  final String regDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AlarmCodeModel(acIdx: $acIdx, acName: $acName, regDate: $regDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AlarmCodeModel'))
      ..add(DiagnosticsProperty('acIdx', acIdx))
      ..add(DiagnosticsProperty('acName', acName))
      ..add(DiagnosticsProperty('regDate', regDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlarmCodeModelImpl &&
            (identical(other.acIdx, acIdx) || other.acIdx == acIdx) &&
            (identical(other.acName, acName) || other.acName == acName) &&
            (identical(other.regDate, regDate) || other.regDate == regDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, acIdx, acName, regDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlarmCodeModelImplCopyWith<_$AlarmCodeModelImpl> get copyWith =>
      __$$AlarmCodeModelImplCopyWithImpl<_$AlarmCodeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlarmCodeModelImplToJson(
      this,
    );
  }
}

abstract class _AlarmCodeModel implements AlarmCodeModel {
  const factory _AlarmCodeModel(
          {@JsonKey(name: 'ac_idx') required final int acIdx,
          @JsonKey(name: 'ac_name') required final String acName,
          @JsonKey(name: 'reg_date') required final String regDate}) =
      _$AlarmCodeModelImpl;

  factory _AlarmCodeModel.fromJson(Map<String, dynamic> json) =
      _$AlarmCodeModelImpl.fromJson;

  @override
  @JsonKey(name: 'ac_idx')
  int get acIdx;
  @override
  @JsonKey(name: 'ac_name')
  String get acName;
  @override
  @JsonKey(name: 'reg_date')
  String get regDate;
  @override
  @JsonKey(ignore: true)
  _$$AlarmCodeModelImplCopyWith<_$AlarmCodeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
