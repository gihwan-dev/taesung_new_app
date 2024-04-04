import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/setting/alarm/notification_switch_list.dart';
import 'package:taesung_app/features/setting/alarm/turn_off_notification_button.dart';
import 'package:taesung_app/features/setting/alarm/turn_on_notification_button.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/notification_setting_provider.dart';
import 'package:taesung_app/providers/user_provider.dart';
import 'package:taesung_app/widgets/error_content.dart';

class NotificationSettingContainer extends ConsumerWidget {
  final DeviceInfoModel selectedDeviceInfo;
  const NotificationSettingContainer({
    super.key,
    required this.selectedDeviceInfo,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationSettingState =
        ref.watch(notificationSettingProvider(diIdx: selectedDeviceInfo.diIdx));

    return notificationSettingState.when(
      skipLoadingOnReload: true,
      data: (notificationSetting) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10,
            ),
            child: ListView(
              children: [
                ref.watch(userProvider).when(
                      // token이 Null값이라면 알림이 허용되어 있지 않다는 것을 의미
                      // 알림 허용을 위한 안내 메시지를 표시
                      data: (user) => user.token == null
                          ? const Text('알림을 받으려면 알림 허용을 해주세요.')
                          : NotificationSwitchList(
                              notificationSetting: notificationSetting,
                              selectedDeviceInfo: selectedDeviceInfo,
                            ),
                      error: (err, st) => ErrorContent(provider: userProvider),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                const SizedBox(height: 20),
                ref.watch(userProvider).when(
                      skipLoadingOnReload: true,
                      data: (user) => user.token == null
                          ? const TurnOnNotificationButton()
                          : const TurnOffNotificationButton(),
                      error: (err, st) => const Text(''),
                      loading: () => const Text(''),
                    ),
              ],
            ),
          ),
        );
      },
      error: (err, st) => Center(
        child: Text(
          'Error: $err',
          style: const TextStyle(color: Colors.red),
        ),
      ),
      loading: () => const ErrorContent(provider: notificationSettingProvider),
    );
  }
}
