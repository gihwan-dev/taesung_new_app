import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/device/widgets/device_item.dart';
import 'package:taesung_app/features/device/widgets/user_name.dart';
import 'package:taesung_app/providers/device_info_provider.dart';
import 'package:taesung_app/providers/router_provider.dart';

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
    final goRouterState = ref.watch(goRouterProvider);

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
              data: (deviceInfoList) => Expanded(
                child: RefreshIndicator(
                  onRefresh: () async => ref.invalidate(deviceInfoProvider),
                  child: ListView.separated(
                    physics: const AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (context, index) =>
                        (const SizedBox(height: 20)),
                    itemCount: deviceInfoList.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        goRouterState.push('/device',
                            extra: deviceInfoList[index]);
                      },
                      child: DeviceItem(
                        diIdx: deviceInfoList[index].diIdx,
                        diName: deviceInfoList[index].diName,
                        diNickname: deviceInfoList[index].diNickname,
                      ),
                    ),
                  ),
                ),
              ),
              error: (er, st) => Center(
                  child: Text(
                'Error: $er',
                style: const TextStyle(color: Colors.red),
              )),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
