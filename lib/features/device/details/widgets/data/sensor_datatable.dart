import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:taesung_app/models/device_info_model.dart';

import 'package:taesung_app/providers/sensor_rest_provider.dart';

const sensorColumns = [
  'mos',
  'ou',
  '시간',
];

class SensorDataTable extends ConsumerWidget {
  final String startDate;
  final String endDate;
  const SensorDataTable({
    super.key,
    required this.startDate,
    required this.endDate,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceInfo = GoRouterState.of(context).extra! as DeviceInfoModel;
    final sensorDataRestState = ref.watch(sensorRestProvider(
        diIdx: deviceInfo.diIdx, startDate: startDate, endDate: endDate));
    return sensorDataRestState.when(
      data: (sensorDataRest) => Expanded(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: DataTable(
              columns: sensorColumns
                  .map(
                    (column) => DataColumn(
                      label: Expanded(
                        child: Text(
                          column,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
              rows: List.generate(
                sensorDataRest.length,
                (index) => DataRow(
                  cells: [
                    DataCell(Text(sensorDataRest[index].sdMos.toString())),
                    DataCell(Text(sensorDataRest[index].sdOu.toString())),
                    DataCell(Text(DateFormat('yyyy-MM-dd HH:mm').format(
                        DateTime.parse(sensorDataRest[index].regDate)))),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      error: (error, st) => Center(
        child: Text(
          error.toString(),
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.red),
        ),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
