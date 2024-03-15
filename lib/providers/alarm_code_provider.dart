import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/models/alarm_code_model.dart';
import 'package:taesung_app/providers/dio_provider.dart';

part 'alarm_code_provider.g.dart';

@riverpod
class AlarmCode extends _$AlarmCode {
  @override
  FutureOr<List<AlarmCodeModel>> build() {
    return getAlarmCode();
  }

  Future<List<AlarmCodeModel>> getAlarmCode() async {
    final response = await ref.watch(publicDioProvider).get('/alarm-code');
    return [for (final data in response.data) AlarmCodeModel.fromJson(data)];
  }

  Future<void> fetchAlarmCode() async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      return getAlarmCode();
    });
  }

  String getCodeName(int acIdx) {
    final alarmCode = state.value!.firstWhere((e) => e.acIdx == acIdx);
    return alarmCode.acName;
  }
}
