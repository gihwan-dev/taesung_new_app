import 'package:flutter/material.dart';
import 'package:taesung_app/features/setting/features/alarm/widgets/device_alarm_setting_layout.dart';

class DeviceAlarmSettingPage extends StatelessWidget {
  const DeviceAlarmSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('알람 설정'),
        ),
        body: const DeviceAlarmSettingLayout());
  }
}
