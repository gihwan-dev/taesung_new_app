import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:taesung_app/models/alarm_setting_model.dart';

class AlarmDetailOuEditField extends ConsumerWidget {
  final TextEditingController controller;
  final Widget title;
  final AlarmSettingModel alarmSetting;
  final String? ouValue;
  final Function(String) onChanged;

  const AlarmDetailOuEditField({
    super.key,
    required this.controller,
    required this.title,
    required this.alarmSetting,
    this.ouValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        title,
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 100,
              child: TextField(
                controller: controller
                  ..text = ouValue ?? alarmSetting.asOuSet.toString(),
                onChanged: onChanged,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Ou',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
