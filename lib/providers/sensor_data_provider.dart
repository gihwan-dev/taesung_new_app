import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:taesung_app/models/sensor_data_model.dart';
import 'package:taesung_app/providers/web_socket_provider.dart';

part 'sensor_data_provider.g.dart';

@riverpod
class SensorData extends _$SensorData {
  final String _sensorDataNameSpace = 'sensor';
  final String _sensorDataEventName = 'findOneSensorData';

  @override
  SensorDataModel build(int diIdx) {
    ref.onDispose(() {
      print('sensorData onDispose $diIdx');
      ref
          .watch(webSocketProvider(_sensorDataNameSpace))
          .off(_sensorDataNameSpace);
    });

    listenFindOneEvent();

    emitFindOneSensorData(diIdx);

    ref.watch(webSocketProvider(_sensorDataNameSpace)).onConnect((data) {
      print('sensorData webSocket connected $diIdx');
    });
    return SensorDataModel.empty().copyWith(diIdx: diIdx);
  }

  void listenFindOneEvent() {
    ref.watch(webSocketProvider(_sensorDataNameSpace)).on(_sensorDataEventName,
        (data) {
      if (data == null) {
        return;
      } else {
        print('sensorData findOneSensorData: $data');
        if (data['di_idx'] != state.diIdx) return;
        state = SensorDataModel.fromJson(data);
      }
    });
  }

  void emitFindOneSensorData(int diIdx) {
    print('sensorData emitFindOneSensorData diIdx: $diIdx');
    ref
        .watch(webSocketProvider(_sensorDataNameSpace))
        .emit(_sensorDataEventName, diIdx);
  }
}
