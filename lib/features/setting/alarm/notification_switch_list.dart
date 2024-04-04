import 'package:flutter/material.dart';

import 'package:taesung_app/features/setting/alarm/notification_setting_title.dart';
import 'package:taesung_app/features/setting/alarm/notification_switch.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/models/notification_setting.dart';
import 'package:taesung_app/providers/notification_setting_provider.dart';

class NotificationSwitchList extends StatelessWidget {
  final NotificationSettingModel notificationSetting;
  final DeviceInfoModel selectedDeviceInfo;
  const NotificationSwitchList({
    super.key,
    required this.notificationSetting,
    required this.selectedDeviceInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
