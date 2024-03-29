import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/device/details/util/color_utils.dart';

import 'package:taesung_app/providers/sensor_data_provider.dart';

class OuText extends ConsumerWidget {
  final int diIdx;
  const OuText({
    super.key,
    required this.diIdx,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sensorDataState = ref.watch(sensorDataProvider(diIdx));
    return Text(
      sensorDataState.sdOu.toString(),
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: getOdorLevelColor(value: sensorDataState.sdOu),
      ),
    );
  }
}
