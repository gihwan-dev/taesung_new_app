import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:taesung_app/consts/color_const.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/weather_provider.dart';

class DeviceMainDataMatrix extends ConsumerWidget {
  const DeviceMainDataMatrix({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceInfo = GoRouterState.of(context).extra! as DeviceInfoModel;
    final weatherState = ref.watch(weatherProvider(deviceInfo.diIdx));
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 60,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildWeatherRow('온도',
              weatherState.wdTemp == null ? '-' : '${weatherState.wdTemp}°C'),
          _buildDivider(),
          _buildWeatherRow('습도',
              weatherState.wdHumi == null ? '-' : '${weatherState.wdHumi}%'),
          _buildDivider(),
          _buildWindDirectionRow(wdWdd: weatherState.wdWdd),
          _buildDivider(),
          _buildWeatherRow(
              '풍속', weatherState.wdWds == null ? '-' : '${weatherState.wdWds}'),
        ],
      ),
    );
  }

  Row _buildWeatherRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(value),
      ],
    );
  }

  Row _buildWindDirectionRow({int? wdWdd}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('풍향', style: TextStyle(fontWeight: FontWeight.bold)),
        Row(
          children: wdWdd == null
              ? const [Text('-')]
              : [
                  Text(windDirection(wdWdd)),
                  const SizedBox(width: 5),
                  Transform.rotate(
                    angle: wdWdd * 0.0174533,
                    child: const Icon(
                      Icons.navigation,
                      color: selectPrimary,
                    ),
                  ),
                ],
        )
      ],
    );
  }

  Divider _buildDivider() {
    return const Divider(
      color: transparentColor,
      height: 25,
      thickness: 0,
      indent: 0,
      endIndent: 0,
    );
  }

  String windDirection(int wdWdd) {
    if (wdWdd >= 337.5 || wdWdd < 22.5) {
      return '북';
    } else if (wdWdd >= 22.5 && wdWdd < 67.5) {
      return '북동';
    } else if (wdWdd >= 67.5 && wdWdd < 112.5) {
      return '동';
    } else if (wdWdd >= 112.5 && wdWdd < 157.5) {
      return '남동';
    } else if (wdWdd >= 157.5 && wdWdd < 202.5) {
      return '남';
    } else if (wdWdd >= 202.5 && wdWdd < 247.5) {
      return '남서';
    } else if (wdWdd >= 247.5 && wdWdd < 292.5) {
      return '서';
    } else if (wdWdd >= 292.5 && wdWdd < 337.5) {
      return '북서';
    }
    return '';
  }
}
