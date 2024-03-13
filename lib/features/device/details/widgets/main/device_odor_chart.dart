import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:taesung_app/consts/color_const.dart';
import 'package:taesung_app/features/device/details/util/color_utils.dart';

class DeviceOdorChart extends StatelessWidget {
  final int odorLevel;
  const DeviceOdorChart({required this.odorLevel, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: PieChart(
              PieChartData(
                startDegreeOffset: 180,
                sectionsSpace: 2,
                centerSpaceRadius: 60,
                sections: List.generate(
                  6,
                  (index) {
                    if (index == 5) {
                      return PieChartSectionData(
                        color: transparentColor,
                        value: 180,
                        radius: 40,
                        showTitle: false,
                      );
                    } else if (index >= odorLevel) {
                      return PieChartSectionData(
                        color: getOdorLevelColor(),
                        value: 36,
                        radius: 40,
                        showTitle: false,
                      );
                    } else {
                      return PieChartSectionData(
                        color: getOdorLevelColor(value: odorLevel),
                        value: 36,
                        radius: 40,
                        showTitle: false,
                      );
                    }
                  },
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Text(
                odorLevel.toString(),
                style: TextStyle(
                  color: getOdorLevelColor(value: odorLevel),
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: IconButton(
                icon: const Icon(Icons.info),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const Dialog(
                      child: SizedBox(
                        width: 300,
                        height: 80,
                        child: Image(
                          image: AssetImage('assets/images/odor-info.jpg'),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
