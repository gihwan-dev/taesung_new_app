import 'package:freezed_annotation/freezed_annotation.dart';
import "package:flutter/foundation.dart";

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  factory AuthModel.empty() => const AuthModel(
        name: '',
        email: '',
        password: '',
        confirmPassword: '',
      );
}
