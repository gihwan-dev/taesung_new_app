import 'package:flutter/material.dart';

import 'package:taesung_app/models/alarm_setting_model.dart';

class AlarmDetailBatEditField extends StatelessWidget {
  final Widget title;
  final String? batValue;
  final Function(double) onChanged;
  final AlarmSettingModel alarmSetting;

  const AlarmDetailBatEditField({
    super.key,
    required this.title,
    this.batValue,
    required this.onChanged,
    required this.alarmSetting,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        title,
        const SizedBox(height: 15),
        Text(
          '${batValue ?? alarmSetting.asBatSet.toString()}%',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Slider(
          value: double.parse(batValue ?? alarmSetting.asBatSet.toString()),
          onChanged: onChanged,
          min: 0,
          max: 100,
          divisions: 20,
          label: batValue ?? alarmSetting.asBatSet.toString(),
        ),
        const SizedBox(height: 100),
      ],
    );
  }
}
