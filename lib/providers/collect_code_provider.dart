import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/models/collect_code_model.dart';
import 'package:taesung_app/providers/dio_provider.dart';

part 'collect_code_provider.g.dart';

@riverpod
class CollectCode extends _$CollectCode {
  @override
  FutureOr<List<CollectCodeModel>> build() {
    return getCollectCode();
  }

  Future<List<CollectCodeModel>> getCollectCode() async {
    final response = await ref.watch(publicDioProvider).get('/collect-code');
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
    // ccIdx에 해당하는 collectCode를 찾아서 ccName을 반환
    final collectCode = state.value?.firstWhere(
      (collectCode) => collectCode.ccIdx == ccIdx,
      orElse: () => CollectCodeModel.empty(),
    );
    return collectCode!.ccName;
  }
}
