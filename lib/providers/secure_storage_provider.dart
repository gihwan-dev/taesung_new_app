import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_storage_provider.g.dart';

@Riverpod(keepAlive: true)
class Token extends _$Token {
  final FlutterSecureStorage _flutterSecureStorage =
      const FlutterSecureStorage();

  @override
  FutureOr<String?> build() {
    return _flutterSecureStorage.read(key: 'token');
  }

  Future<void> save(String token) async {
    state = const AsyncValue.loading();
    await _flutterSecureStorage.write(key: 'token', value: token);
    state = AsyncValue.data(token);
  }

  Future<void> delete() => _flutterSecureStorage.delete(key: 'token');
}
