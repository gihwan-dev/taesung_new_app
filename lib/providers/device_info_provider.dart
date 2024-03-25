import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/dio_provider.dart';

part 'device_info_provider.g.dart';

@riverpod
class DeviceInfo extends _$DeviceInfo {
  @override
  FutureOr<List<DeviceInfoModel>> build() {
    return getDeviceInfo();
  }

  Future<List<DeviceInfoModel>> getDeviceInfo() async {
    final response = await ref.watch(publicDioProvider).get('/info');
    return [for (final json in response.data) DeviceInfoModel.fromJson(json)];
  }

  Future<void> fetchDeviceInfo() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return getDeviceInfo();
    });
  }
}
