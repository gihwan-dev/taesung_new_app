import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/models/alarm_setting_model.dart';
import 'package:taesung_app/providers/dio_provider.dart';
import 'package:taesung_app/providers/secure_storage_provider.dart';

part 'alarm_setting_provider.g.dart';

@riverpod
class AlarmSetting extends _$AlarmSetting {
  @override
  FutureOr<AlarmSettingModel> build({
    required int diIdx,
  }) {
    return getAlarmSetting(diIdx: diIdx);
  }

  Future<AlarmSettingModel> getAlarmSetting({required int diIdx}) async {
    final response =
        await ref.watch(publicDioProvider).get('/alarm-setting/$diIdx');
    return AlarmSettingModel.fromJson(response.data);
  }

  Future<void> fetchAlarmSetting({required int diIdx}) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return await getAlarmSetting(diIdx: diIdx);
    });
  }

  Future<void> updateAlarmSetting(
      {required int asIdx,
      required int? ouValue,
      required int? batValue}) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final token = ref.watch(tokenProvider).value!;
      final response = await ref
          .watch(privateDioProvider(token))
          .patch('/alarm-setting/$asIdx', data: {
        'ouValue': ouValue,
        'batValue': batValue,
      });

      return AlarmSettingModel.fromJson(response.data);
    });
  }
}
