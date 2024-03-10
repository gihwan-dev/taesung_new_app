import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/web_socket_provider.dart';

part 'device_info_provider.g.dart';

@riverpod
class DeviceInfo extends _$DeviceInfo {
  final String _deviceInfoNamespace = 'info';
  @override
  List<DeviceInfoModel> build() {
    listenFindAllEvent();

    ref.watch(webSocketProvider(_deviceInfoNamespace)).on('error', (error) {
      print('webSocket error: $error');
    });

    ref.watch(webSocketProvider(_deviceInfoNamespace)).onConnect((_) {
      print('webSocket connected');
      emitFindAllDeviceInfo();
    });

    ref.watch(webSocketProvider(_deviceInfoNamespace)).onDisconnect((_) {
      print('webSocket disconnected');
    });

    ref
        .watch(webSocketProvider(_deviceInfoNamespace))
        .onError((error) => print(error));

    return [];
  }

  void listenFindAllEvent() {
    ref.watch(webSocketProvider(_deviceInfoNamespace)).on('findAllDeviceInfo',
        (data) {
      state = [for (final json in data) DeviceInfoModel.fromJson(json)];
    });
  }

  void emitFindAllDeviceInfo() {
    ref
        .watch(webSocketProvider(_deviceInfoNamespace))
        .emit('findAllDeviceInfo', 'init');
  }
}
