import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/weather_rest_provider.dart';
import 'package:taesung_app/widgets/error_content.dart';

const weatherColumns = [
  '온도',
  '습도',
  '풍향',
  '풍속',
  '시간',
];

class WeatherDataTable extends ConsumerWidget {
  final String startDate;
  final String endDate;
  const WeatherDataTable({
    super.key,
    required this.startDate,
    required this.endDate,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceInfo = GoRouterState.of(context).extra! as DeviceInfoModel;
    final weatherRestDataState = ref.watch(weatherRestProvider(
        diIdx: deviceInfo.diIdx, startDate: startDate, endDate: endDate));
    return weatherRestDataState.when(
      data: (weatherRestData) => Expanded(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: DataTable(
                columns: weatherColumns
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
                  weatherRestData.length,
                  (index) => DataRow(
                    cells: [
                      DataCell(Text(weatherRestData[index].wdTemp.toString())),
                      DataCell(Text(weatherRestData[index].wdHumi.toString())),
                      DataCell(Text(weatherRestData[index].wdWdd.toString())),
                      DataCell(Text(weatherRestData[index].wdWds.toString())),
                      DataCell(Text(DateFormat('yyyy-MM-dd HH:mm').format(
                          DateTime.parse(weatherRestData[index].regDate)))),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      error: (error, st) => const ErrorContent(provider: weatherRestProvider),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
