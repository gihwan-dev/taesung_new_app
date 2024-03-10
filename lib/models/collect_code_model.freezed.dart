// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collect_code_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollectCodeModel _$CollectCodeModelFromJson(Map<String, dynamic> json) {
  return _CollectCodeModel.fromJson(json);
}

/// @nodoc
mixin _$CollectCodeModel {
  @JsonKey(name: 'cc_idx')
  int get ccIdx => throw _privateConstructorUsedError;
  @JsonKey(name: 'cc_name')
  String get ccName => throw _privateConstructorUsedError;
  @JsonKey(name: 'reg_date')
  String get regDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectCodeModelCopyWith<CollectCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectCodeModelCopyWith<$Res> {
  factory $CollectCodeModelCopyWith(
          CollectCodeModel value, $Res Function(CollectCodeModel) then) =
      _$CollectCodeModelCopyWithImpl<$Res, CollectCodeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cc_idx') int ccIdx,
      @JsonKey(name: 'cc_name') String ccName,
      @JsonKey(name: 'reg_date') String regDate});
}

/// @nodoc
class _$CollectCodeModelCopyWithImpl<$Res, $Val extends CollectCodeModel>
    implements $CollectCodeModelCopyWith<$Res> {
  _$CollectCodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ccIdx = null,
    Object? ccName = null,
    Object? regDate = null,
  }) {
    return _then(_value.copyWith(
      ccIdx: null == ccIdx
          ? _value.ccIdx
          : ccIdx // ignore: cast_nullable_to_non_nullable
              as int,
      ccName: null == ccName
          ? _value.ccName
          : ccName // ignore: cast_nullable_to_non_nullable
              as String,
      regDate: null == regDate
          ? _value.regDate
          : regDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectCodeModelImplCopyWith<$Res>
    implements $CollectCodeModelCopyWith<$Res> {
  factory _$$CollectCodeModelImplCopyWith(_$CollectCodeModelImpl value,
          $Res Function(_$CollectCodeModelImpl) then) =
      __$$CollectCodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cc_idx') int ccIdx,
      @JsonKey(name: 'cc_name') String ccName,
      @JsonKey(name: 'reg_date') String regDate});
}

/// @nodoc
class __$$CollectCodeModelImplCopyWithImpl<$Res>
    extends _$CollectCodeModelCopyWithImpl<$Res, _$CollectCodeModelImpl>
    implements _$$CollectCodeModelImplCopyWith<$Res> {
  __$$CollectCodeModelImplCopyWithImpl(_$CollectCodeModelImpl _value,
      $Res Function(_$CollectCodeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ccIdx = null,
    Object? ccName = null,
    Object? regDate = null,
  }) {
    return _then(_$CollectCodeModelImpl(
      ccIdx: null == ccIdx
          ? _value.ccIdx
          : ccIdx // ignore: cast_nullable_to_non_nullable
              as int,
      ccName: null == ccName
          ? _value.ccName
          : ccName // ignore: cast_nullable_to_non_nullable
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
class _$CollectCodeModelImpl
    with DiagnosticableTreeMixin
    implements _CollectCodeModel {
  const _$CollectCodeModelImpl(
      {@JsonKey(name: 'cc_idx') required this.ccIdx,
      @JsonKey(name: 'cc_name') required this.ccName,
      @JsonKey(name: 'reg_date') required this.regDate});

  factory _$CollectCodeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectCodeModelImplFromJson(json);

  @override
  @JsonKey(name: 'cc_idx')
  final int ccIdx;
  @override
  @JsonKey(name: 'cc_name')
  final String ccName;
  @override
  @JsonKey(name: 'reg_date')
  final String regDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CollectCodeModel(ccIdx: $ccIdx, ccName: $ccName, regDate: $regDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CollectCodeModel'))
      ..add(DiagnosticsProperty('ccIdx', ccIdx))
      ..add(DiagnosticsProperty('ccName', ccName))
      ..add(DiagnosticsProperty('regDate', regDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectCodeModelImpl &&
            (identical(other.ccIdx, ccIdx) || other.ccIdx == ccIdx) &&
            (identical(other.ccName, ccName) || other.ccName == ccName) &&
            (identical(other.regDate, regDate) || other.regDate == regDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ccIdx, ccName, regDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectCodeModelImplCopyWith<_$CollectCodeModelImpl> get copyWith =>
      __$$CollectCodeModelImplCopyWithImpl<_$CollectCodeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectCodeModelImplToJson(
      this,
    );
  }
}

abstract class _CollectCodeModel implements CollectCodeModel {
  const factory _CollectCodeModel(
          {@JsonKey(name: 'cc_idx') required final int ccIdx,
          @JsonKey(name: 'cc_name') required final String ccName,
          @JsonKey(name: 'reg_date') required final String regDate}) =
      _$CollectCodeModelImpl;

  factory _CollectCodeModel.fromJson(Map<String, dynamic> json) =
      _$CollectCodeModelImpl.fromJson;

  @override
  @JsonKey(name: 'cc_idx')
  int get ccIdx;
  @override
  @JsonKey(name: 'cc_name')
  String get ccName;
  @override
  @JsonKey(name: 'reg_date')
  String get regDate;
  @override
  @JsonKey(ignore: true)
  _$$CollectCodeModelImplCopyWith<_$CollectCodeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
