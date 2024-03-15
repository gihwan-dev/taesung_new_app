import 'package:flutter/material.dart';
import 'package:taesung_app/features/alarm/alarm_data_list_view.dart';
import 'package:taesung_app/features/alarm/alarm_type_select_button.dart';
import 'package:taesung_app/features/alarm/device_select_button.dart';

class HomeAlarmPage extends StatefulWidget {
  const HomeAlarmPage({super.key});

  @override
  State<HomeAlarmPage> createState() => _HomeAlarmPageState();
}

class _HomeAlarmPageState extends State<HomeAlarmPage> {
  int curAcIdx = 0;
  int? curDiIdx;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: double.infinity, height: 10),
            AlarmTypeSelectButton(
              curValue: curAcIdx,
              onChange: (value) {
                setState(() {
                  curAcIdx = value;
                });
              },
            ),
            DeviceSelectButton(
              curValue: curDiIdx,
              onChange: (value) {
                setState(() {
                  curDiIdx = value;
                });
              },
            ),
            const SizedBox(height: 10),
            AlarmDataListView(
              acIdx: curAcIdx,
              diIdx: curDiIdx,
            ),
          ],
        ),
      ),
    );
  }
}
