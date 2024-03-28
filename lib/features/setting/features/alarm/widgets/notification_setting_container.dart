import 'package:app_settings/app_settings.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
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
                ref.watch(userProvider).when(
                      data: (user) => user.token == null
                          ? const Text('알림을 받으려면 알림 허용을 해주세요.')
                          : Column(
                              children: _buildSwitchList(notificationSetting),
                            ),
                      error: (err, st) => Column(
                        children: [
                          const Text('오류가 발생했습니다. 다시 시도해 주세요.'),
                          ElevatedButton(
                              onPressed: () {
                                ref.invalidate(notificationSettingProvider(
                                    diIdx: selectedDeviceInfo.diIdx));
                                ref.invalidate(userProvider);
                              },
                              child: const Text('새로고침')),
                        ],
                      ),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                const SizedBox(height: 20),
                ref.watch(userProvider).when(
                      skipLoadingOnReload: true,
                      data: (user) => user.token == null
                          ? FilledButton(
                              onPressed: () async {
                                final permission = await FirebaseMessaging
                                    .instance
                                    .requestPermission(
                                  provisional: true,
                                );
                                print(
                                    'permission is: ${permission.authorizationStatus}');
                                if (permission.authorizationStatus ==
                                    AuthorizationStatus.authorized) {
                                  final fcmToken = await FirebaseMessaging
                                      .instance
                                      .getToken();
                                  final result = await ref
                                      .read(userProvider.notifier)
                                      .createFcmToken(fcmToken);

                                  ref.invalidate(userProvider);
                                  if (context.mounted) {
                                    if (result) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text('알림 허용이 완료되었습니다.'),
                                        ),
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              '알림 허용에 실패했습니다. 다시 시도해 주세요.'),
                                        ),
                                      );
                                    }
                                  }
                                } else {
                                  if (context.mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: const Text(
                                            '알림 허용이 거부되었습니다. 앱 설정에서 알림을 허용해주세요.'),
                                        action: SnackBarAction(
                                            label: '설정으로 이동',
                                            onPressed: () async {
                                              await AppSettings
                                                  .openAppSettings();
                                            }),
                                      ),
                                    );
                                  }
                                }
                              },
                              child: const Text('알림 허용'),
                            )
                          : FilledButton(
                              onPressed: () async {
                                final result = await ref
                                    .read(userProvider.notifier)
                                    .deleteFcmToken();
                                ref.invalidate(userProvider);
                                if (context.mounted) {
                                  if (result) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('알림 끄기가 완료되었습니다.'),
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content:
                                            Text('알림 끄기에 실패했습니다. 다시 시도해 주세요.'),
                                      ),
                                    );
                                  }
                                }
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
