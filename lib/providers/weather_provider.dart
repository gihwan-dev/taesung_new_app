import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:taesung_app/models/weather_model.dart';
import 'package:taesung_app/providers/web_socket_provider.dart';

part 'weather_provider.g.dart';

@riverpod
class Weather extends _$Weather {
  final String _nameSpace = 'weather';
  final String _eventName = 'findOneWeather';
  @override
  WeatherModel build(int diIdx) {
    ref.onDispose(() {
      print('weatherProvider onDispose $diIdx');
      ref.watch(webSocketProvider(_nameSpace)).off(_nameSpace);
    });

    listenEvent();

    ref.watch(webSocketProvider(_nameSpace)).onConnect((_) {
      print('weather webSocket connected $diIdx');
    });

    emitEvent(diIdx);

    ref
        .watch(webSocketProvider(_nameSpace))
        .onDisconnect((data) => print('weather webSocket disconnected $diIdx'));

    return WeatherModel.empty();
  }

  void emitEvent(int diIdx) {
    print('weather emitEvent diIdx: $diIdx');
    ref.watch(webSocketProvider(_nameSpace)).emit(_eventName, diIdx);
  }

  void listenEvent() {
    ref.watch(webSocketProvider(_nameSpace)).on(_eventName, (weatherData) {
      print('weatherData: $weatherData');
      if (weatherData == null) {
        return;
      }
      state = WeatherModel.fromJson(weatherData);
    });
  }
}
