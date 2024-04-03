import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:taesung_app/features/setting/alarm/alarm_detail/alarm_detail_bat_edit_field.dart';
import 'package:taesung_app/features/setting/alarm/alarm_detail/alarm_detail_form_button.dart';
import 'package:taesung_app/features/setting/alarm/alarm_detail/alarm_detail_ou_edit_field.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/alarm_setting_provider.dart';
import 'package:taesung_app/widgets/error_content.dart';

class DeviceAlarmSettingLayout extends ConsumerStatefulWidget {
  const DeviceAlarmSettingLayout({super.key});

  @override
  ConsumerState<DeviceAlarmSettingLayout> createState() =>
      _DeviceAlarmSettingLayoutState();
}

class _DeviceAlarmSettingLayoutState
    extends ConsumerState<DeviceAlarmSettingLayout> {
  final TextEditingController _controller = TextEditingController();
  String? ouValue;
  String? batValue;
  @override
  Widget build(BuildContext context) {
    final selectedDeviceInfo =
        GoRouterState.of(context).extra! as DeviceInfoModel;
    final alarmSettingState =
        ref.watch(alarmSettingProvider(diIdx: selectedDeviceInfo.diIdx));

    return Scaffold(
      appBar: AppBar(
        title: const Text('알람 설정'),
      ),
      body: alarmSettingState.when(
        skipLoadingOnReload: true,
        data: (alarmSetting) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AlarmDetailOuEditField(
                controller: _controller,
                title: _buildTitleText("복합악취"),
                alarmSetting: alarmSetting,
                onChanged: (value) => setState(
                  () {
                    ouValue = value;
                  },
                ),
                ouValue: ouValue,
              ),
              AlarmDetailBatEditField(
                title: _buildTitleText("배터리"),
                onChanged: (value) => setState(
                  () {
                    batValue = value.toStringAsFixed(0);
                  },
                ),
                alarmSetting: alarmSetting,
                batValue: batValue,
              ),
              AlarmDetailFormButton(
                diIdx: selectedDeviceInfo.diIdx,
                asIdx: alarmSetting.asIdx,
                ouValue: ouValue,
                batValue: batValue,
              ),
            ],
          ),
        ),
        error: (err, st) => const ErrorContent(provider: alarmSettingProvider),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }

  Text _buildTitleText(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
