import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:taesung_app/providers/alarm_setting_provider.dart';

class AlarmDetailFormButton extends ConsumerWidget {
  final int diIdx;
  final int asIdx;
  final String? ouValue;
  final String? batValue;
  const AlarmDetailFormButton({
    super.key,
    required this.diIdx,
    required this.asIdx,
    this.ouValue,
    this.batValue,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.grey[200],
              ),
            ),
            onPressed: () {
              context.pop();
            },
            child: const Text(
              '취소',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: ElevatedButton(
            onPressed: () async {
              await ref
                  .read(alarmSettingProvider(diIdx: diIdx).notifier)
                  .updateAlarmSetting(
                      asIdx: asIdx,
                      ouValue: ouValue == null ? null : int.parse(ouValue!),
                      batValue: batValue == null ? null : int.parse(batValue!));
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('저장되었습니다.'),
                  ),
                );
              }
            },
            child: const Text(
              '저장',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
