import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:taesung_app/features/device/utils/icon_utils.dart';

class DeviceBatContainer extends StatelessWidget {
  final int dsBat;
  const DeviceBatContainer({required this.dsBat, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: 1,
          child: Icon(
            getBatteryIcon(dsBat),
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(width: 5),
        Text(
          '$dsBat%',
          style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
