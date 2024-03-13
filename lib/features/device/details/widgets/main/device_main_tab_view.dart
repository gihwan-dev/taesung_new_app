import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:taesung_app/features/device/details/widgets/main/device_char_matrix_container.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/sensor_data_provider.dart';

class DeviceMainTabView extends ConsumerStatefulWidget {
  const DeviceMainTabView({super.key});

  @override
  ConsumerState<DeviceMainTabView> createState() => _DeviceMainTabViewState();
}

class _DeviceMainTabViewState extends ConsumerState<DeviceMainTabView> {
  @override
  Widget build(BuildContext context) {
    DeviceInfoModel deviceInfo =
        GoRouterState.of(context).extra! as DeviceInfoModel;

    final sensorDataState = ref.watch(sensorDataProvider(deviceInfo.diIdx));

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            const Text(
              '복합악취',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            DeviceCharMatrixContainer(odorLevel: sensorDataState.sdOu),
          ],
        ),
      ),
    );
  }
}
