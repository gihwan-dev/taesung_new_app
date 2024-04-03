import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:taesung_app/features/device/details/widgets/device/device_state_matrix_row.dart';

import 'package:taesung_app/features/device/utils/icon_utils.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/device_state_provider.dart';

const columnList = [
  '모델명',
  '배터리',
  '수신날짜',
  '문열림 상태',
];

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
        DeviceStateMatrixRow(
            title: "모델명", value: _buildStateValueText(curDeviceInfo.diName)),
        _buildDivider(),
        DeviceStateMatrixRow(
            title: "배터리",
            value: _buildStateValueTextWithIcon(bat: deviceState.dsBat)),
        _buildDivider(),
        DeviceStateMatrixRow(
            title: "수신날짜", value: _buildStateValueText(deviceState.modeDate)),
        _buildDivider(),
        DeviceStateMatrixRow(
            title: "문열림 상태",
            value:
                _buildStateValueText(deviceState.dsDoor == 1 ? "문열림" : "문닫힘")),
        _buildDivider(),
      ],
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
