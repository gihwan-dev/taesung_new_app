import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/device/widgets/device_item.dart';
import 'package:taesung_app/features/device/widgets/user_name.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/device_info_provider.dart';

class HomeMainPage extends ConsumerStatefulWidget {
  const HomeMainPage({
    super.key,
  });

  @override
  ConsumerState<HomeMainPage> createState() => _HomeMainPageState();
}

class _HomeMainPageState extends ConsumerState<HomeMainPage> {
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
              error: (er, st) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Row(),
                  Text(
                    'Error: $er',
                    style: const TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      ref.invalidate(deviceInfoProvider);
                    },
                    child: const Text('새로고침'),
                  )
                ],
              ),
              loading: () => Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DeviceList extends StatelessWidget {
  final List<DeviceInfoModel> deviceInfoList;
  const DeviceList({
    super.key,
    required this.ref,
    required this.deviceInfoList,
  });

  final WidgetRef ref;

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
