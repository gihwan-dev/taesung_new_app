import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/alarm/alarm_data_list_item.dart';
import 'package:taesung_app/features/alarm/alarm_data_loading_skeleton.dart';
import 'package:taesung_app/providers/alarm_data_provider.dart';
import 'package:taesung_app/providers/device_info_provider.dart';
import 'package:taesung_app/widgets/error_content.dart';

class AlarmDataListView extends ConsumerWidget {
  final int? diIdx;
  final int acIdx;
  const AlarmDataListView({
    super.key,
    this.diIdx,
    required this.acIdx,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceInfoState = ref.watch(deviceInfoProvider);
    return deviceInfoState.when(
      data: (deviceInfoList) {
        final alarmDataState = ref.watch(alarmDataProvider(
            acIdx: acIdx, diIdx: diIdx ?? deviceInfoList[0].diIdx));
        return Expanded(
          child: alarmDataState.when(
            data: (alarmDataList) =>
                AlarmDataListItem(alarmDataList: alarmDataList),
            error: (err, st) => const ErrorContent(provider: alarmDataProvider),
            loading: () => const AlarmDataLoadingSkeleton(),
          ),
        );
      },
      error: (err, st) => ErrorContent(provider: deviceInfoProvider),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
