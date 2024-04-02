import 'package:flutter/material.dart';
import 'package:taesung_app/features/alarm/alarm_data_list_view.dart';
import 'package:taesung_app/features/alarm/alarm_type_select_button.dart';
import 'package:taesung_app/features/alarm/device_select_button.dart';

class HomeAlarmLayout extends StatefulWidget {
  const HomeAlarmLayout({super.key});

  @override
  State<HomeAlarmLayout> createState() => _HomeAlarmLayoutState();
}

class _HomeAlarmLayoutState extends State<HomeAlarmLayout> {
  // 최초 알람 데이터 페이지 접속시 acIdx 값을 0을로 할당 => 0 = 전체 알람 데이터 열람
  int curAcIdx = 0;
  // 초기 diIdx는 초기값으로 Null값으로 할당한 후
  // 디바이스 정보 리스트중 가장 첫번째 요소의 diIdx로 초기화 됩니다.
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
