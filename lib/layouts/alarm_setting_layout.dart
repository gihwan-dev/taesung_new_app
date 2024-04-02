import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/setting/alarm/alarm_setting_button.dart';
import 'package:taesung_app/features/setting/alarm/device_drop_down.dart';
import 'package:taesung_app/features/setting/alarm/notification_setting_container.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/device_info_provider.dart';
import 'package:taesung_app/widgets/error_content.dart';

class AlarmSettingLayout extends ConsumerStatefulWidget {
  const AlarmSettingLayout({super.key});

  @override
  ConsumerState<AlarmSettingLayout> createState() => _AlarmSettingLayoutState();
}

class _AlarmSettingLayoutState extends ConsumerState<AlarmSettingLayout> {
  // 알람 설정 페이지에서 알람 설정을 확인할 디바이스에 대한 변수 입니다.
  DeviceInfoModel? selectedDeviceInfo;

  // drop down 버튼의 변경 이벤트 발생시 호출되는 함수 입니다.
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
            // 현재 선택된 디바이스가 Null값이라면 가장 첫 번째 요소를
            // 현재 선택된 디바이스로 넘겨줍니다.
            DeviceDropDown(
              selectedDeviceInfo:
                  selectedDeviceInfo ?? deviceInfoList.elementAt(0),
              deviceInfoList: deviceInfoList,
              onChanged: onChanged,
            ),
            // 동일하게 동작하며 알람 설정(배터리, 복합악취 수치)에 대한 UI를 확인할 수 있고,
            // 탭 하면 알람 설정 페이지로 넘어가는 버튼 입니다.
            AlarmSettingButton(
              selectedDeviceInfo:
                  selectedDeviceInfo ?? deviceInfoList.elementAt(0),
            ),
            const Divider(),
            // 푸쉬 알림을 허용하거나 선택적으로 허용할 수 있도록 해주는
            // switch 버튼의 리스트를 담고있는 컨테이너 입니다.
            NotificationSettingContainer(
              selectedDeviceInfo:
                  selectedDeviceInfo ?? deviceInfoList.elementAt(0),
            ),
          ],
        ),
        error: (err, st) => ErrorContent(provider: deviceInfoProvider),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
