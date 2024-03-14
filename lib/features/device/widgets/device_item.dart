import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:taesung_app/features/device/widgets/device_info_container.dart';
import 'package:taesung_app/features/device/widgets/ou_text.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/router_provider.dart';

class DeviceItem extends ConsumerWidget {
  final DeviceInfoModel deviceInfo;
  const DeviceItem({
    super.key,
    required this.deviceInfo,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouterState = ref.watch(goRouterProvider);
    return GestureDetector(
      onTap: () {
        goRouterState.push('/device/${deviceInfo.diIdx}', extra: deviceInfo);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OuText(diIdx: deviceInfo.diIdx),
            const SizedBox(width: 30),
            DeviceInfoContainer(
              diIdx: deviceInfo.diIdx,
              diName: deviceInfo.diName,
              diNickname: deviceInfo.diNickname,
            )
          ],
        ),
      ),
    );
  }
}
