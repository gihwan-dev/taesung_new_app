import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/alarm_setting_provider.dart';

class AlarmSettingBtnTitleContainer extends ConsumerWidget {
  final DeviceInfoModel selectedDeviceInfo;
  const AlarmSettingBtnTitleContainer({
    super.key,
    required this.selectedDeviceInfo,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alarmSettingState =
        ref.watch(alarmSettingProvider(diIdx: selectedDeviceInfo.diIdx));
    return alarmSettingState.when(
        data: (alarmSetting) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildAlarmSettingTitle(
                  title: '복합악취',
                  value: alarmSetting.asOuSet,
                  unit: "Ou",
                ),
                const SizedBox(
                  height: 20,
                ),
                _buildAlarmSettingTitle(
                  title: '배터리',
                  value: alarmSetting.asBatSet,
                  unit: "%",
                )
              ],
            ),
        error: (err, st) => Center(
              child: Text(
                'Error: $err',
                style: const TextStyle(color: Colors.red),
              ),
            ),
        loading: () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildAlarmSettingTitle(
                  title: '복합악취',
                  value: 0,
                  unit: "Ou",
                ),
                const SizedBox(
                  height: 20,
                ),
                _buildAlarmSettingTitle(
                  title: '배터리',
                  value: 0,
                  unit: "%",
                )
              ],
            ));
  }

  Row _buildAlarmSettingTitle({
    required String title,
    required int value,
    required String unit,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '$value$unit',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
