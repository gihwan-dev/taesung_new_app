import 'package:flutter/material.dart';
import 'package:taesung_app/features/device/details/widgets/main/device_main_data_matrix.dart';
import 'package:taesung_app/features/device/details/widgets/main/device_odor_chart.dart';

class DeviceCharMatrixContainer extends StatelessWidget {
  final int odorLevel;
  const DeviceCharMatrixContainer({required this.odorLevel, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 400,
      child: Stack(
        children: [
          DeviceOdorChart(odorLevel: odorLevel),
          const Positioned(
            left: 0,
            right: 0,
            top: 170,
            child: DeviceMainDataMatrix(),
          )
        ],
      ),
    );
  }
}
