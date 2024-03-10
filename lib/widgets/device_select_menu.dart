import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:taesung_app/consts/color_const.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/device_info_provider.dart';

class DeviceSelectMenu extends ConsumerWidget {
  const DeviceSelectMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceInfoListState = ref.watch(deviceInfoProvider);
    final curDeviceInfo = GoRouterState.of(context).extra! as DeviceInfoModel;
    return deviceInfoListState.when(
      data: (deviceInfoList) => Container(
        padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: selectPrimary,
            width: 2,
          ),
        ),
        child: DropdownButton(
          style: const TextStyle(
              fontWeight: FontWeight.w600, color: selectPrimary),
          value: curDeviceInfo,
          underline: Container(),
          items: [
            for (final deviceInfo in deviceInfoList)
              DropdownMenuItem(
                value: deviceInfo,
                child: Text(deviceInfo.diNickname ?? deviceInfo.diName),
              ),
          ],
          onChanged: (value) {
            context.replace('/device', extra: value);
          },
        ),
      ),
      error: (er, st) => const Text('...'),
      loading: () => const Text('...'),
    );
  }
}
