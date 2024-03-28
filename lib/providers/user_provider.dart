import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/models/user_model.dart';
import 'package:taesung_app/providers/dio_provider.dart';
import 'package:taesung_app/providers/secure_storage_provider.dart';

part 'user_provider.g.dart';

@riverpod
class User extends _$User {
  @override
  FutureOr<UserModel> build() {
    return getUserInfo();
  }

  Future<UserModel> getUserInfo() async {
    state = const AsyncValue.loading();
    final token = ref.watch(tokenProvider);
    final response =
        await ref.read(privateDioProvider(token.value!)).get('/user');

    print('user response: ${response.data}');
    return UserModel.fromJson(response.data);
  }

  Future<bool> deleteFcmToken() async {
    bool isSuccess = false;

    try {
      final token = ref.watch(tokenProvider).value;

      if (token == null) {
        return isSuccess;
      }

      final response =
          await ref.read(privateDioProvider(token)).delete('/token');

      if (response.statusCode == 200) {
        isSuccess = true;
      }
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? "네트워크 오류가 발생했습니다. 다시 시도해주세요.";
    } catch (e) {
      rethrow;
    }

    return isSuccess;
  }

  Future<bool> createFcmToken(String? fcmToken) async {
    bool isSuccess = false;

    try {
      final token = ref.watch(tokenProvider).value;

      if (token == null) {
        return isSuccess;
      }
      final response =
          await ref.read(privateDioProvider(token)).post('/token', data: {
        'token': fcmToken,
      });

      print(response.statusCode);

      if (response.statusCode == 201) {
        isSuccess = true;
      }
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? "네트워크 오류가 발생했습니다. 다시 시도해주세요.";
    } catch (e) {
      rethrow;
    }

    return isSuccess;
  }
}
