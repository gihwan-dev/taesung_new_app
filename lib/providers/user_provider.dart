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
}
