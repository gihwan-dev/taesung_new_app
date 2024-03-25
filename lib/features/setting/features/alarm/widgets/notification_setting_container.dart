import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/setting/features/alarm/widgets/notification_setting_title.dart';
import 'package:taesung_app/features/setting/features/alarm/widgets/notification_switch.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/models/notification_setting.dart';
import 'package:taesung_app/providers/notification_setting_provider.dart';
import 'package:taesung_app/providers/user_provider.dart';

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
                ..._buildSwitchList(notificationSetting),
                const SizedBox(height: 20),
                ref.watch(userProvider).when(
                      data: (user) => user.token == null
                          ? FilledButton(
                              onPressed: () {
                                // TODO: 알림 허용 로직 작성
                              },
                              child: const Text('알림 허용'),
                            )
                          : FilledButton(
                              onPressed: () {
                                // TODO: 알림 끄기 로직 작성
                              },
                              child: const Text('알림 끄기'),
                            ),
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
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  List<Widget> _buildSwitchList(NotificationSettingModel notificationSetting) {
    return [
      const NotificationSettingTitle(),
      const SizedBox(
        height: 20,
      ),
      NotificationSwitch(
        nsIdx: notificationSetting.nsIdx,
        diIdx: selectedDeviceInfo.diIdx,
        title: '포집알림',
        value: notificationSetting.nsCollect,
        type: NotificationPatchType.collect,
      ),
      NotificationSwitch(
        nsIdx: notificationSetting.nsIdx,
        diIdx: selectedDeviceInfo.diIdx,
        title: '복합악취 초과 알림',
        value: notificationSetting.nsOuOver,
        type: NotificationPatchType.ouOver,
      ),
      NotificationSwitch(
        nsIdx: notificationSetting.nsIdx,
        diIdx: selectedDeviceInfo.diIdx,
        title: '문열림 알림',
        value: notificationSetting.nsDoorOpen,
        type: NotificationPatchType.doorOpen,
      ),
      NotificationSwitch(
        nsIdx: notificationSetting.nsIdx,
        diIdx: selectedDeviceInfo.diIdx,
        title: '배터리 알림',
        value: notificationSetting.nsLowBattery,
        type: NotificationPatchType.lowBattery,
      ),
    ];
  }
}
