import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/models/collect_code_model.dart';
import 'package:taesung_app/providers/dio_provider.dart';
import 'package:taesung_app/providers/secure_storage_provider.dart';

part 'collect_code_provider.g.dart';

@riverpod
class CollectCode extends _$CollectCode {
  @override
  FutureOr<CollectCodeModel> build(int ccIdx) {
    return getCollectCode(ccIdx);
  }

  Future<CollectCodeModel> getCollectCode(int ccIdx) async {
    final token = ref.watch(tokenProvider);
    final response = await ref
        .read(privateDioProvider(token.value!))
        .get('/collect-code/$ccIdx');
    print('collect code $ccIdx response: ${response.data}');
    return CollectCodeModel.fromJson(response.data);
  }

  Future<void> fetchCollectCode(int ccIdx) async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      return getCollectCode(ccIdx);
    });
  }
}
