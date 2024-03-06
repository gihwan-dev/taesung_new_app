import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

const baseUrl = 'http://localhost:3000';

@riverpod
Dio publicDio(PublicDioRef ref) {
  return Dio(
    BaseOptions(
      baseUrl: baseUrl,
    ),
  );
}

@riverpod
Dio privateDio(PrivateDioRef ref, String token) {
  return Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'Authorization': 'Bearer $token',
      },
    ),
  );
}
