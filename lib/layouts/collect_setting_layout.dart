import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/setting/collect/auto_collect_item.dart';
import 'package:taesung_app/providers/device_info_provider.dart';

class CollectSettingLayout extends ConsumerWidget {
  const CollectSettingLayout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceInfoState = ref.watch(deviceInfoProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('자동 포집 설정'),
      ),
      body: deviceInfoState.when(
        data: (deviceInfoList) {
          return ListView(
            children: [
              for (final deviceInfo in deviceInfoList)
                AutoCollectItem(curDeviceInfo: deviceInfo)
            ],
          );
        },
        error: (err, st) => Center(
          child: Column(
            children: [
              Text(
                'Error: $err',
                style: const TextStyle(color: Colors.red),
              ),
              TextButton(
                onPressed: () {
                  ref.invalidate(deviceInfoProvider);
                },
                child: const Text('다시 불러오기'),
              )
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
