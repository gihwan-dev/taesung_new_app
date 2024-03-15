import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:taesung_app/providers/alarm_code_provider.dart';

class AlarmTypeSelectButton extends ConsumerStatefulWidget {
  final int curValue;
  final Function onChange;
  const AlarmTypeSelectButton({
    super.key,
    required this.curValue,
    required this.onChange,
  });

  @override
  ConsumerState<AlarmTypeSelectButton> createState() =>
      _AlarmTypeSelectButtonState();
}

class _AlarmTypeSelectButtonState extends ConsumerState<AlarmTypeSelectButton> {
  @override
  Widget build(BuildContext context) {
    final alarmCodeState = ref.watch(alarmCodeProvider);
    return alarmCodeState.when(
      data: (alarmCodes) => DropdownButton(
        value: widget.curValue,
        items: [
          const DropdownMenuItem(
            value: 0,
            child: Text('전체'),
          ),
          for (final alarmCode in alarmCodes)
            DropdownMenuItem(
              value: alarmCode.acIdx,
              child: Text(alarmCode.acName),
            ),
        ],
        onChanged: (value) => widget.onChange(value),
      ),
      error: (er, st) => Center(
        child: Text(
          er.toString(),
          style: const TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      loading: () => const Text('_'),
    );
  }
}
