import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:taesung_app/consts/color_const.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/models/device_setting_model.dart';
import 'package:taesung_app/providers/device_setting_provider.dart';
import 'package:taesung_app/providers/router_provider.dart';

class CollectSettingFormButtons extends ConsumerWidget {
  final DeviceSettingModel? deviceSetting;
  final String? ouValue;
  final String? delayValue;
  const CollectSettingFormButtons({
    super.key,
    this.deviceSetting,
    this.ouValue,
    this.delayValue,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final curDeviceInfo = GoRouterState.of(context).extra! as DeviceInfoModel;

    return Column(
      children: [
        deviceSetting == null
            ? const SizedBox()
            : SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    // diIdx를 통해 해당 디바이스의 자동포집 설정을 삭제합니다.
                    await ref
                        .read(deviceSettingProvider(diIdx: curDeviceInfo.diIdx)
                            .notifier)
                        .deleteDeviceSetting(diIdx: curDeviceInfo.diIdx);
                    if (context.mounted) {
                      _showSnackBar(context, '자동포집 설정이 삭제되었습니다.');
                    }
                  },
                  child: const Text(
                    '자동포집 설정 삭제',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.grey[200],
                  ),
                ),
                onPressed: () {
                  ref.watch(goRouterProvider).pop();
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
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    primaryBlue,
                  ),
                ),
                onPressed: () async {
                  // ouValue, delayValue가 둘중 하나라도 null이면 저장하지 않습니다.
                  if (ouValue == null || delayValue == null) {
                    _showSnackBar(context, '값을 입력해주세요.');
                    return;
                  }
                  await ref
                      .read(deviceSettingProvider(diIdx: curDeviceInfo.diIdx)
                          .notifier)
                      .updateDeviceSetting(
                          diIdx: curDeviceInfo.diIdx,
                          ouValue: ouValue!,
                          delayValue: delayValue!);
                  if (context.mounted) {
                    _showSnackBar(context, '자동포집 설정이 저장되었습니다.');
                  }
                },
                child: const Text(
                  '저장',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(
          seconds: 1,
        ),
        content: Text(message),
      ),
    );
  }
}
