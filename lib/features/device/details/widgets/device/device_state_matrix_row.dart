import 'package:flutter/material.dart';

class DeviceStateMatrixRow extends StatelessWidget {
  final String title;

  final Widget value;

  const DeviceStateMatrixRow({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
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
}
