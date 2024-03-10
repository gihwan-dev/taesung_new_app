import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:taesung_app/features/device/details/widgets/device_odor_chart.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/device_state_provider.dart';

class DeviceMainTabView extends ConsumerWidget {
  const DeviceMainTabView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceInfo = GoRouterState.of(context).extra! as DeviceInfoModel;
    final deviceState = ref.watch(deviceStateProvider(deviceInfo.diIdx));
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Center(
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            Text(
              '복합악취',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            DeviceOdorChart(odorLevel: 1),
          ],
        ),
      ),
    );
  }
}
