import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/models/auth_model.dart';
import 'package:taesung_app/providers/dio_provider.dart';
import 'package:taesung_app/providers/secure_storage_provider.dart';

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
      signUpStatus: SignUpStatus.initial,
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
        signUpStatus: SignUpStatus.initial));
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

  Future<void> signIn(String? fcmToken) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        if (!signInIsValid()) {
          throw '유효하지 않은 입력 양식 입니다. 이메일 또는 패스워드를 확인해 주세요.';
        }
        final response = await ref.read(publicDioProvider).post('/auth',
            data: state.value!.toJson()..addAll({'fcmToken': fcmToken}));
        if (response.statusCode == 201) {
          ref.read(tokenProvider.notifier).save(response.data['access_token']);
          return Future(() => AuthModel.empty());
        }
        throw "로그인에 실패했습니다. 다시 시도해 주세요.";
      } on DioException catch (e) {
        throw e.response?.data['message'] ?? '알 수 없는 에러가 발생했습니다.';
      } catch (e) {
        rethrow;
      }
    });
  }

  Future<bool> signUp() async {
    state = const AsyncValue.loading();
    bool isSuccess = false;
    state = await AsyncValue.guard(
      () async {
        try {
          if (!signUpIsValid()) {
            throw "유효하지 않은 입력 양식 입니다.";
          }
          final response = await ref
              .read(publicDioProvider)
              .post('/user', data: state.value!.toJson());
          if (response.statusCode == 201) {
            isSuccess = true;
          }
          return Future(
              () => state.value!.copyWith(signUpStatus: SignUpStatus.success));
        } on DioException catch (e) {
          throw e.response?.data['message'] ?? '알 수 없는 에러가 발생했습니다.';
        } catch (e) {
          rethrow;
        }
      },
    );
    return isSuccess;
  }
}
