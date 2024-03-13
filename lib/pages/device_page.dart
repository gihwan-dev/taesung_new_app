import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/device/details/widgets/collect/device_collect_tab_view.dart';
import 'package:taesung_app/features/device/details/widgets/data/device_data_tab_view.dart';
import 'package:taesung_app/features/device/details/widgets/main/device_main_tab_view.dart';
import 'package:taesung_app/features/device/details/widgets/device/device_state_tab_view.dart';
import 'package:taesung_app/widgets/device_select_menu.dart';

class DevicePage extends ConsumerWidget {
  const DevicePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const DeviceSelectMenu(),
          bottom: _buildTabBar(),
        ),
        body: const TabBarView(
          children: [
            DeviceMainTabView(),
            DeviceStateTabView(),
            DeviceCollectTabView(),
            DeviceDataTabView(),
          ],
        ),
      ),
    );
  }

  TabBar _buildTabBar() {
    return const TabBar(tabs: [
      Tab(
        child: Text("메인"),
      ),
      Tab(
        child: Text("기기"),
      ),
      Tab(
        child: Text("포집"),
      ),
      Tab(
        child: Text("조회"),
      ),
    ]);
  }
}
