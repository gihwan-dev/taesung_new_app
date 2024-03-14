import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:taesung_app/features/device/widgets/device_nickname_text.dart';
import 'package:taesung_app/features/device/widgets/device_state_detail.dart';

class DeviceInfoContainer extends ConsumerWidget {
  final int diIdx;
  final String? diNickname;
  final String diName;
  const DeviceInfoContainer({
    super.key,
    required this.diIdx,
    this.diNickname,
    required this.diName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        DeviceNicknameText(deviceNickname: diNickname ?? diName),
        const SizedBox(height: 10),
        DeviceStateDetail(
          diIdx: diIdx,
        ),
      ],
    );
  }
}
