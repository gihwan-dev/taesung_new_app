import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:taesung_app/consts/color_const.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/device_setting_provider.dart';

class CollectSaveButton extends ConsumerWidget {
  final String? ouValue;
  final String? delayValue;
  final Function(BuildContext context, String message) showSnackBar;
  const CollectSaveButton({
    super.key,
    this.ouValue,
    this.delayValue,
    required this.showSnackBar,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final curDeviceInfo = GoRouterState.of(context).extra! as DeviceInfoModel;

    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            primaryBlue,
          ),
        ),
        onPressed: () async {
          // ouValue, delayValue가 둘중 하나라도 null이면 저장하지 않습니다.
          if (ouValue == null || delayValue == null) {
            showSnackBar(context, '값을 입력해주세요.');
            return;
          }
          await ref
              .read(deviceSettingProvider(diIdx: curDeviceInfo.diIdx).notifier)
              .updateDeviceSetting(
                  diIdx: curDeviceInfo.diIdx,
                  ouValue: ouValue!,
                  delayValue: delayValue!);
          if (context.mounted) {
            showSnackBar(context, '자동포집 설정이 저장되었습니다.');
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
    );
  }
}
