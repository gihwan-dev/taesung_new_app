import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:taesung_app/providers/alarm_code_provider.dart';
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
    final alarmCodeState = ref.watch(alarmCodeProvider);
    return deviceInfoState.when(
      data: (deviceInfoList) {
        final alarmDataState = ref.watch(alarmDataProvider(
            acIdx: acIdx, diIdx: diIdx ?? deviceInfoList[0].diIdx));
        return Expanded(
          child: alarmDataState.when(
            data: (alarmDataList) => ListView.separated(
              itemBuilder: (context, index) => ListTile(
                trailing: Text(
                  DateFormat('yyyy-MM-dd HH:mm:ss')
                      .format(DateTime.parse(alarmDataList[index].regDate)),
                ),
                title: alarmCodeState.when(
                  data: (_) => Text(
                    ref
                        .read(alarmCodeProvider.notifier)
                        .getCodeName(alarmDataList[index].acIdx),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  loading: () => const Text("_"),
                  error: (err, st) => Text(
                    err.toString(),
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const Divider(height: 10),
              itemCount: alarmDataList.length,
            ),
            error: (err, st) => const ErrorContent(provider: alarmDataProvider),
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
              ],
            ),
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
