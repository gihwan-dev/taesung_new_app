import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/models/collect_code_model.dart';
import 'package:taesung_app/providers/dio_provider.dart';
import 'package:taesung_app/providers/secure_storage_provider.dart';

part 'collect_code_provider.g.dart';

@riverpod
class CollectCode extends _$CollectCode {
  @override
  FutureOr<List<CollectCodeModel>> build() {
    return getCollectCode();
  }

  Future<List<CollectCodeModel>> getCollectCode() async {
    final token = ref.watch(tokenProvider);
    final response =
        await ref.read(privateDioProvider(token.value!)).get('/collect-code');
    print('collect code response: ${response.data}');
    return [
      for (final collectCode in response.data)
        CollectCodeModel.fromJson(collectCode)
    ];
  }

  Future<void> fetchCollectCode(int ccIdx) async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      return getCollectCode();
    });
  }

  String getCollectCodeName(int ccIdx) {
    final collectCode = state.value?.firstWhere(
      (collectCode) => collectCode.ccIdx == ccIdx,
      orElse: () => CollectCodeModel.empty(),
    );
    return collectCode!.ccName;
  }
}
