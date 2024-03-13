import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:taesung_app/models/device_state_model.dart';
import 'package:taesung_app/providers/web_socket_provider.dart';

part 'device_state_provider.g.dart';

@riverpod
class DeviceState extends _$DeviceState {
  final String _deviceStateNameSpace = 'state';
  final String _deviceStateEventName = 'findOneDeviceState';

  @override
  DeviceStateModel build(int diIdx) {
    ref.onDispose(() {
      print('deviceState onDispose $diIdx');
      ref
          .watch(webSocketProvider(_deviceStateNameSpace))
          .off(_deviceStateNameSpace);
    });

    ref.watch(webSocketProvider(_deviceStateNameSpace)).onConnect((data) {
      print('deviceState webSocket connected $diIdx');
    });

    emitFindOneDeviceState(diIdx);

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
        return;
      } else {
        print('deviceState findOneDeviceState: $data');
        if (data['di_idx'] != state.diIdx) return;
        state = DeviceStateModel.fromJson(data)
            .copyWith(emitStatus: DeviceEmitStatus.isSuccess);
      }
    });
  }

  void emitFindOneDeviceState(int diIdx) {
    ref
        .watch(webSocketProvider(_deviceStateNameSpace))
        .emit(_deviceStateEventName, diIdx);
  }

  void emitStartCollect({required int diIdx}) {
    state = state.copyWith(emitStatus: DeviceEmitStatus.isLoading);
    ref
        .watch(webSocketProvider(_deviceStateNameSpace))
        .emit('startCollect', diIdx);
  }

  void emitResetCollect({required int diIdx}) {
    state = state.copyWith(emitStatus: DeviceEmitStatus.isLoading);
    ref
        .watch(webSocketProvider(_deviceStateNameSpace))
        .emit('resetCollect', diIdx);
  }
}
