import 'package:flutter/material.dart';

class NotificationSwitch extends StatelessWidget {
  final String title;
  final bool value;
  const NotificationSwitch({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: 스위치 기능 구현(토글 기능 api 연동)
    return ListTile(
      title: Text(title),
      trailing: Switch(
        value: value,
        onChanged: (bool value) {},
      ),
    );
  }
}
