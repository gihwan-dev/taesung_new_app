import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/setting/collect/auto_collect_item.dart';
import 'package:taesung_app/providers/device_info_provider.dart';
import 'package:taesung_app/widgets/error_content.dart';

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
        error: (err, st) => ErrorContent(provider: deviceInfoProvider),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
