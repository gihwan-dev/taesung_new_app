import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/consts/color_const.dart';
import 'package:taesung_app/features/setting/alarm/alarm_setting_btn_title_container.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/router_provider.dart';

class AlarmSettingButton extends ConsumerWidget {
  final DeviceInfoModel selectedDeviceInfo;
  const AlarmSettingButton({
    super.key,
    required this.selectedDeviceInfo,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.watch(goRouterProvider).push(
            '/setting/alarm/${selectedDeviceInfo.diIdx}',
            extra: selectedDeviceInfo);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 40),
        decoration: BoxDecoration(
          color: alarmSettingButtonColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 10,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        padding: const EdgeInsets.all(30),
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AlarmSettingBtnTitleContainer(
              selectedDeviceInfo: selectedDeviceInfo,
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
