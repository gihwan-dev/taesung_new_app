import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/models/device_setting_model.dart';
import 'package:taesung_app/providers/dio_provider.dart';
import 'package:taesung_app/providers/secure_storage_provider.dart';

part 'device_setting_provider.g.dart';

@riverpod
class DeviceSetting extends _$DeviceSetting {
  @override
  FutureOr<DeviceSettingModel?> build({required int diIdx}) {
    return getDeviceSetting(diIdx: diIdx);
  }

  Future<DeviceSettingModel?> getDeviceSetting({required int diIdx}) async {
    final response =
        await ref.watch(publicDioProvider).get('/device-setting/$diIdx');
    print('get device setting response: $response');
    return response.data == ''
        ? null
        : DeviceSettingModel.fromJson(response.data);
  }

  Future<void> deleteDeviceSetting({required int diIdx}) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final token = ref.watch(tokenProvider).value!;
      await ref
          .watch(privateDioProvider(token))
          .delete('/device-setting/$diIdx');
      return null;
    });
  }

  Future<void> updateDeviceSetting(
      {required int diIdx,
      required String ouValue,
      required String delayValue}) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final token = ref.watch(tokenProvider).value!;
      final response = await ref
          .watch(privateDioProvider(token))
          .patch('/device-setting/$diIdx', data: {
        'ouValue': ouValue,
        'delayValue': delayValue,
      });
      return DeviceSettingModel.fromJson(response.data);
    });
  }
}
