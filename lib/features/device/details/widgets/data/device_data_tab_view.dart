import 'package:flutter/material.dart';
import 'package:taesung_app/features/device/details/widgets/data/data_type_selectors.dart';
import 'package:taesung_app/features/device/details/widgets/data/date_selectors.dart';
import 'package:taesung_app/features/device/details/widgets/data/sensor_datatable.dart';
import 'package:taesung_app/features/device/details/widgets/data/weather_datatable.dart';

class DeviceDataTabView extends StatefulWidget {
  const DeviceDataTabView({super.key});

  @override
  State<DeviceDataTabView> createState() => _DeviceDataTabViewState();
}

class _DeviceDataTabViewState extends State<DeviceDataTabView> {
  String startDate = DateTime.now().toString();
  String endDate = DateTime.now().toString();
  String type = 'sensor';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          dataTypeButtonContainer(),
          const SizedBox(height: 10),
          const Text('기간', style: TextStyle(fontWeight: FontWeight.bold)),
          dateSelectorsContainer(),
          type == 'sensor'
              ? SensorDataTable(
                  startDate: startDate,
                  endDate: endDate,
                )
              : WeatherDataTable(
                  startDate: startDate,
                  endDate: endDate,
                ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Row dataTypeButtonContainer() {
    return Row(
      children: [
        const Text('조회 데이터', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(
          width: 20,
        ),
        DataTypeSelector(
          value: type,
          onChanged: (value) {
            setState(() {
              type = value;
            });
          },
        ),
      ],
    );
  }

  Row dateSelectorsContainer() {
    return Row(
      children: [
        DateSelectors(
            date: startDate,
            onChange: (value) {
              setState(() {
                startDate = value.toString();
              });
            }),
        const SizedBox(width: 10),
        const Text('~', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(width: 10),
        DateSelectors(
          date: endDate,
          onChange: (value) {
            setState(() {
              endDate = value.toString();
            });
          },
        ),
      ],
    );
  }
}
