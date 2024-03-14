import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/device/widgets/collect_code_text.dart';
import 'package:taesung_app/features/device/widgets/device_bat_container.dart';
import 'package:taesung_app/features/device/widgets/network_status_text.dart';
import 'package:taesung_app/providers/device_state_provider.dart';

class DeviceStateDetail extends ConsumerWidget {
  final int diIdx;
  const DeviceStateDetail({required this.diIdx, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget getVerticalDivider() {
      return VerticalDivider(
        width: MediaQuery.of(context).size.width * 0.07,
        color: Colors.grey,
        thickness: 1.3,
        indent: 5,
        endIndent: 5,
      );
    }

    final deviceState = ref.watch(deviceStateProvider(diIdx));
    return SizedBox(
      height: 30,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CollectCodeText(ccIdx: deviceState.dsCollect),
          getVerticalDivider(),
          DeviceBatContainer(dsBat: deviceState.dsBat),
          getVerticalDivider(),
          NetworkStatusText(hasError: deviceState.hasError),
        ],
      ),
    );
  }
}
