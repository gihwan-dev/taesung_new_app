import 'package:flutter/material.dart';

class DeviceNicknameText extends StatelessWidget {
  final String deviceNickname;
  const DeviceNicknameText({super.key, required this.deviceNickname});

  @override
  Widget build(BuildContext context) {
    return Text(
      deviceNickname,
      style: TextStyle(
        color: Colors.grey[700],
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    );
  }
}
