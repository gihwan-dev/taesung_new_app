import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/setting/features/alarm/widgets/alarm_setting_button.dart';
import 'package:taesung_app/features/setting/features/alarm/widgets/device_drop_down.dart';
import 'package:taesung_app/features/setting/features/alarm/widgets/notification_setting_container.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/device_info_provider.dart';

class AlarmSettingPage extends ConsumerStatefulWidget {
  const AlarmSettingPage({super.key});

  @override
  ConsumerState<AlarmSettingPage> createState() => _AlarmSettingPageState();
}

class _AlarmSettingPageState extends ConsumerState<AlarmSettingPage> {
  DeviceInfoModel? selectedDeviceInfo;

  void onChanged(DeviceInfoModel deviceInfo) {
    setState(() {
      selectedDeviceInfo = deviceInfo;
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceInfoState = ref.watch(deviceInfoProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('알림'),
      ),
      body: deviceInfoState.when(
        data: (deviceInfoList) => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(),
            DeviceDropDown(
              selectedDeviceInfo:
                  selectedDeviceInfo ?? deviceInfoList.elementAt(0),
              deviceInfoList: deviceInfoList,
              onChanged: onChanged,
            ),
            AlarmSettingButton(
              selectedDeviceInfo:
                  selectedDeviceInfo ?? deviceInfoList.elementAt(0),
            ),
            const Divider(),
            NotificationSettingContainer(
              selectedDeviceInfo:
                  selectedDeviceInfo ?? deviceInfoList.elementAt(0),
            ),
          ],
        ),
        error: (err, st) => Column(
          children: [
            Text(
              'Error: $err',
              style: const TextStyle(color: Colors.red),
            ),
          ],
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
