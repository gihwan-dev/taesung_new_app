import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/models/notification_setting.dart';
import 'package:taesung_app/providers/dio_provider.dart';
import 'package:taesung_app/providers/secure_storage_provider.dart';

part 'notification_setting_provider.g.dart';

enum NotificationPatchType {
  collect,
  ouOver,
  doorOpen,
  lowBattery,
}

@riverpod
class NotificationSetting extends _$NotificationSetting {
  @override
  FutureOr<NotificationSettingModel> build({required int diIdx}) {
    return getNotificationSetting(diIdx: diIdx);
  }

  Future<NotificationSettingModel> getNotificationSetting(
      {required int diIdx}) async {
    final token = ref.watch(tokenProvider).value!;
    final response = await ref
        .watch(privateDioProvider(token))
        .get('/notification-setting/$diIdx');
    return NotificationSettingModel.fromJson(response.data);
  }

  Future<void> fetchNotificationSetting({required int diIdx}) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return await getNotificationSetting(diIdx: diIdx);
    });
  }

  Future<void> updateNotificationSetting({
    required int nsIdx,
    required NotificationPatchType type,
    required bool value,
  }) async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final token = ref.watch(tokenProvider);
      final response = await ref
          .watch(privateDioProvider(token.value!))
          .patch('/notification-setting/$nsIdx', data: {
        'type': type.name,
        'value': value,
      });
      return NotificationSettingModel.fromJson(response.data);
    });
  }
}
