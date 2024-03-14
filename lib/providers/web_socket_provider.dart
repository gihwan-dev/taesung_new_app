import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

part 'web_socket_provider.g.dart';

@riverpod
IO.Socket webSocket<String>(WebSocketRef ref, String namespace) {
  ref.onDispose(() {
    print('webSocketProvider($namespace) dispose');
  });
  print('webSocketProvider($namespace) create');
  final io = IO.io(
    'http://localhost:3000/$namespace',
    IO.OptionBuilder()
        .disableAutoConnect()
        .setTransports(['websocket']).build(),
  );

  io.connect();

  return io;
}
