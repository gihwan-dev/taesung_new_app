import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/setting/features/alarm/widgets/notification_setting_title.dart';
import 'package:taesung_app/features/setting/features/alarm/widgets/notification_switch.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/notification_setting_provider.dart';

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
      data: (notificationSetting) {
        print('notificationSetting: $notificationSetting');
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10,
            ),
            child: ListView(
              children: [
                const NotificationSettingTitle(),
                const SizedBox(
                  height: 20,
                ),
                NotificationSwitch(
                    title: '포집알림', value: notificationSetting.nsCollect),
                NotificationSwitch(
                    title: '복합악취 초과 알림', value: notificationSetting.nsOuOver),
                NotificationSwitch(
                    title: '문열림 알림', value: notificationSetting.nsDoorOpen),
                NotificationSwitch(
                    title: '배터리 알림', value: notificationSetting.nsLowBattery),
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
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
