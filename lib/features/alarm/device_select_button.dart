import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:taesung_app/providers/device_info_provider.dart';
import 'package:taesung_app/widgets/error_content.dart';

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
      error: (er, st) => ErrorContent(provider: deviceInfoProvider),
      loading: () => const Text('_'),
    );
  }
}
