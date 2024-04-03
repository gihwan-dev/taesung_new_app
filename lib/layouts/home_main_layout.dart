import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/device/widgets/device_list.dart';
import 'package:taesung_app/features/device/widgets/device_list_loading_skeleton.dart';
import 'package:taesung_app/features/device/widgets/user_name.dart';
import 'package:taesung_app/providers/device_info_provider.dart';
import 'package:taesung_app/widgets/error_content.dart';

class HomeMainLayout extends ConsumerStatefulWidget {
  const HomeMainLayout({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeMainLayoutState();
}

class _HomeMainLayoutState extends ConsumerState<HomeMainLayout> {
  @override
  Widget build(BuildContext context) {
    final deviceInfoListState = ref.watch(deviceInfoProvider);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserName(),
            const SizedBox(height: 20),
            deviceInfoListState.when(
              skipLoadingOnRefresh: false,
              data: (deviceInfoList) => DeviceList(
                ref: ref,
                deviceInfoList: deviceInfoList,
              ),
              error: (er, st) => ErrorContent(provider: deviceInfoProvider),
              loading: () => const DeviceListLoadingSkeleton(),
            ),
          ],
        ),
      ),
    );
  }
}
