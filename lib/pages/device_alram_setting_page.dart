import 'package:flutter/material.dart';

class DeviceAlarmSettingPage extends StatelessWidget {
  const DeviceAlarmSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('알림'),
      ),
      body: const Center(
        child: Text('알림 설정 페이지'),
      ),
    );
  }
}
