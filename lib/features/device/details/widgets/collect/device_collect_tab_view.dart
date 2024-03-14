import 'package:flutter/material.dart';
import 'package:taesung_app/features/device/details/widgets/collect/collect_button.dart';

class DeviceCollectTabView extends StatelessWidget {
  const DeviceCollectTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 100),
        CollectButton(),
      ],
    );
  }
}
