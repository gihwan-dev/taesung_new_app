import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:taesung_app/models/alarm_data_model.dart';
import 'package:taesung_app/providers/alarm_code_provider.dart';

class AlarmDataListItem extends ConsumerWidget {
  final List<AlarmDataModel> alarmDataList;
  const AlarmDataListItem({
    super.key,
    required this.alarmDataList,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alarmCodeState = ref.watch(alarmCodeProvider);

    return ListView.separated(
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
    );
  }
}
