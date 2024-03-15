import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:taesung_app/providers/device_info_provider.dart';

class DeviceSelectButton extends ConsumerStatefulWidget {
  final int? curValue;
  final Function onChange;
  const DeviceSelectButton({
    super.key,
    required this.curValue,
    required this.onChange,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DeviceSelectButtonState();
}

class _DeviceSelectButtonState extends ConsumerState<DeviceSelectButton> {
  @override
  Widget build(BuildContext context) {
    final deviceInfoState = ref.watch(deviceInfoProvider);
    return deviceInfoState.when(
      data: (deviceInfoList) {
        return DropdownButton(
          value: widget.curValue ?? deviceInfoList.first.diIdx,
          items: [
            for (final deviceInfo in deviceInfoList)
              DropdownMenuItem(
                value: deviceInfo.diIdx,
                child: Text(deviceInfo.diName),
              ),
          ],
          onChanged: (value) => widget.onChange(value),
        );
      },
      error: (er, st) => Text(
        er.toString(),
        style: const TextStyle(
          color: Colors.red,
        ),
      ),
      loading: () => const Text('_'),
    );
  }
}
