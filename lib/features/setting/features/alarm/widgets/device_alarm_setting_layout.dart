import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:taesung_app/models/alarm_setting_model.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/alarm_setting_provider.dart';

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

    return alarmSettingState.when(
      data: (alarmSetting) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildOuSetField(alarmSetting),
            _buildBatSetField(alarmSetting, context),
            _buildButtonField(context,
                diIdx: selectedDeviceInfo.diIdx, asIdx: alarmSetting.asIdx),
          ],
        ),
      ),
      error: (err, st) => Text(
        'Error: $err',
        style: const TextStyle(color: Colors.red),
      ),
      loading: () => const CircularProgressIndicator(),
    );
  }

  Row _buildButtonField(
    BuildContext context, {
    required int diIdx,
    required int asIdx,
  }) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.grey[200],
              ),
            ),
            onPressed: () {
              context.pop();
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
            onPressed: () async {
              await ref
                  .read(alarmSettingProvider(diIdx: diIdx).notifier)
                  .updateAlarmSetting(
                      asIdx: asIdx,
                      ouValue: ouValue == null ? null : int.parse(ouValue!),
                      batValue: batValue == null ? null : int.parse(batValue!));
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('저장되었습니다.'),
                  ),
                );
              }
            },
            child: const Text(
              '저장',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column _buildBatSetField(
      AlarmSettingModel alarmSetting, BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildTitleText('배터리'),
        const SizedBox(height: 15),
        Text(
          '${batValue ?? alarmSetting.asBatSet.toString()}%',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Slider(
          value: double.parse(batValue ?? alarmSetting.asBatSet.toString()),
          onChanged: (value) {
            setState(() {
              batValue = value.toStringAsFixed(0);
            });
          },
          min: 0,
          max: 100,
          divisions: 20,
          label: batValue ?? alarmSetting.asBatSet.toString(),
        ),
        const SizedBox(height: 100),
      ],
    );
  }

  Column _buildOuSetField(AlarmSettingModel alarmSetting) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildTitleText('복합 악취'),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 100,
              child: TextField(
                controller: _controller
                  ..text = ouValue ?? alarmSetting.asOuSet.toString(),
                onChanged: (value) {
                  setState(() {
                    ouValue = value;
                  });
                },
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Ou',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
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
