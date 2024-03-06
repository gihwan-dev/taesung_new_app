import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/models/auth_model.dart';
import 'package:taesung_app/providers/dio_provider.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  FutureOr<AuthModel> build() {
    return const AuthModel(
      name: '',
      email: '',
      password: '',
      confirmPassword: '',
    );
  }

  void setEmail(String email) {
    state = AsyncValue.data(state.value!.copyWith(email: email));
  }

  void setPassword(String password) {
    state = AsyncValue.data(state.value!.copyWith(password: password));
  }

  void setConfirmPassword(String confirmPassword) {
    state = AsyncValue.data(
        state.value!.copyWith(confirmPassword: confirmPassword));
  }

  void setName(String name) {
    state = AsyncValue.data(state.value!.copyWith(name: name));
  }

  void reset() {
    state = const AsyncValue.data(AuthModel(
      name: '',
      email: '',
      password: '',
      confirmPassword: '',
    ));
  }

  bool signInIsValid() =>
      state.value!.email.isNotEmpty &&
      state.value!.password.isNotEmpty &&
      isEmailValid() &&
      isPasswordValid();

  bool signUpIsValid() =>
      state.value!.email.isNotEmpty &&
      state.value!.password.isNotEmpty &&
      state.value!.confirmPassword.isNotEmpty &&
      state.value!.name.isNotEmpty &&
      isEmailValid() &&
      isPasswordValid() &&
      isPasswordSame();

  bool isPasswordSame() =>
      state.value!.password == state.value!.confirmPassword;

  bool isPasswordValid() => state.value!.password.length >= 6;

  bool isEmailValid() =>
      RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$')
          .hasMatch(state.value!.email);

  Future<void> signIn() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      print(state.value);
      if (!signInIsValid()) {
        throw '유효하지 않은 입력 양식 입니다. 이메일 또는 패스워드를 확인해 주세요.';
      }
      final response = await ref
          .read(publicDioProvider)
          .post('/auth', data: state.value!.toJson());
      print(response);
      if (response.statusCode == 200) {}
      return Future(() => state.value!.copyWith());
    });
  }

  Future<void> signUp() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      if (!signUpIsValid()) {
        throw "유효하지 않은 입력 양식 입니다.";
      }
      final response = await ref
          .read(publicDioProvider)
          .post('/user', data: state.value!.toJson());

      print(response.statusCode);
      return Future(() => state.value!.copyWith());
    });
  }
}
