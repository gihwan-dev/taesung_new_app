import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:taesung_app/models/device_state_model.dart';
import 'package:taesung_app/providers/collect_code_provider.dart';
import 'package:taesung_app/providers/web_socket_provider.dart';

part 'device_state_provider.g.dart';

@riverpod
class DeviceState extends _$DeviceState {
  final String _deviceStateNameSpace = 'state';
  final String _deviceStateEventName = 'findOneDeviceState';

  @override
  DeviceStateModel build(int diIdx) {
    ref.watch(webSocketProvider(_deviceStateNameSpace)).onConnect((data) {
      print('deviceState webSocket connected $diIdx');
      emitFindOneDeviceState(diIdx);
    });

    ref
        .watch(webSocketProvider(_deviceStateNameSpace))
        .onDisconnect((data) => print('deviceState webSocket disconnected'));

    ref.watch(webSocketProvider(_deviceStateNameSpace)).onError((error) {
      print('deviceState webSocket error: $error');
      state = state.copyWith(hasError: true);
    });

    listenFindOneEvent();

    return DeviceStateModel.empty().copyWith(diIdx: diIdx);
  }

  void listenFindOneEvent() {
    ref
        .watch(webSocketProvider(_deviceStateNameSpace))
        .on(_deviceStateEventName, (data) {
      if (data == null) {
        state = DeviceStateModel.empty();
        return;
      } else {
        print('deviceState findOneDeviceState: $data');
        if (data['di_idx'] != state.diIdx) return;
        state = DeviceStateModel.fromJson(data);
        ref.invalidate(collectCodeProvider(data['ds_collect']));
      }
    });
  }

  void emitFindOneDeviceState(int diIdx) {
    ref
        .watch(webSocketProvider(_deviceStateNameSpace))
        .emit(_deviceStateEventName, diIdx);
  }
}
