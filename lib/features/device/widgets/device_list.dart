import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/device/widgets/device_item.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/device_info_provider.dart';

class DeviceList extends StatelessWidget {
  final List<DeviceInfoModel> deviceInfoList;
  final WidgetRef ref;
  const DeviceList({
    super.key,
    required this.ref,
    required this.deviceInfoList,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () async => ref.invalidate(deviceInfoProvider),
        child: ListView.separated(
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, index) => (const SizedBox(height: 20)),
          itemCount: deviceInfoList.length,
          itemBuilder: (context, index) => DeviceItem(
            deviceInfo: deviceInfoList[index],
          ),
        ),
      ),
    );
  }
}
