import 'package:flutter/material.dart';

class NotificationSettingTitle extends StatelessWidget {
  const NotificationSettingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '푸쉬 알림 설정',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
