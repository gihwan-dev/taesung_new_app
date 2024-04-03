import 'package:flutter/material.dart';

class SettingFooter extends StatelessWidget {
  const SettingFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '태성 연구소 CS: 052-247-8691',
        style: TextStyle(
          fontSize: 13,
          color: Colors.grey,
        ),
      ),
    );
  }
}
