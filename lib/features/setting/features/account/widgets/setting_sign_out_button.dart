import 'package:flutter/material.dart';

class SettingSignOutButton extends StatelessWidget {
  const SettingSignOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          '로그아웃',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
