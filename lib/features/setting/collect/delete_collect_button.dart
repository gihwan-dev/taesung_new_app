import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/device_setting_provider.dart';

class DeleteCollectButton extends ConsumerWidget {
  final Function(BuildContext context, String message) showSnackBar;
  const DeleteCollectButton({
    super.key,
    required this.showSnackBar,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final curDeviceInfo = GoRouterState.of(context).extra! as DeviceInfoModel;

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () async {
          // diIdx를 통해 해당 디바이스의 자동포집 설정을 삭제합니다.
          await ref
              .read(deviceSettingProvider(diIdx: curDeviceInfo.diIdx).notifier)
              .deleteDeviceSetting(diIdx: curDeviceInfo.diIdx);
          if (context.mounted) {
            showSnackBar(context, '자동포집 설정이 삭제되었습니다.');
          }
        },
        child: const Text(
          '자동포집 설정 삭제',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
