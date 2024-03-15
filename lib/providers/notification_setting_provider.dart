import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/models/notification_setting.dart';
import 'package:taesung_app/providers/dio_provider.dart';

part 'notification_setting_provider.g.dart';

@riverpod
class NotificationSetting extends _$NotificationSetting {
  @override
  FutureOr<NotificationSettingModel> build({required int diIdx}) {
    return getNotificationSetting(diIdx: diIdx);
  }

  Future<NotificationSettingModel> getNotificationSetting(
      {required int diIdx}) async {
    final response =
        await ref.watch(publicDioProvider).get('/notification-setting/$diIdx');
    return NotificationSettingModel.fromJson(response.data);
  }

  Future<void> fetchNotificationSetting({required int diIdx}) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return await getNotificationSetting(diIdx: diIdx);
    });
  }
}
