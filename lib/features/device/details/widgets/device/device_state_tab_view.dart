import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:taesung_app/features/device/utils/icon_utils.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/device_state_provider.dart';

class DeviceStateTabView extends ConsumerWidget {
  const DeviceStateTabView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final curDeviceInfo = GoRouterState.of(context).extra! as DeviceInfoModel;
    final deviceState = ref.watch(deviceStateProvider(curDeviceInfo.diIdx));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Row(),
        const SizedBox(height: 30),
        _buildStateRow('모델명', _buildStateValueText(curDeviceInfo.diName)),
        _buildDivider(),
        _buildStateRow(
          '배터리',
          _buildStateValueTextWithIcon(bat: deviceState.dsBat),
        ),
        _buildDivider(),
        _buildStateRow('수신날짜', _buildStateValueText(deviceState.modeDate)),
        _buildDivider(),
        _buildStateRow(
          '문열림 상태',
          _buildStateValueText(deviceState.dsDoor == 1 ? "문열림" : "문닫힘"),
        ),
        _buildDivider(),
      ],
    );
  }

  SizedBox _buildStateRow(String title, Widget value) {
    return SizedBox(
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          value,
        ],
      ),
    );
  }

  Text _buildStateValueText(String value) {
    return Text(value);
  }

  Row _buildStateValueTextWithIcon({required int bat}) {
    return Row(
      children: [
        RotatedBox(
          quarterTurns: 1,
          child: Icon(
            getBatteryIcon(bat),
          ),
        ),
        const SizedBox(width: 5),
        Text('$bat%'),
      ],
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: Colors.grey[300],
      height: 30,
      indent: 30,
      endIndent: 30,
    );
  }
}
