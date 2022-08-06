import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:secret_hitler/network/network_service.dart';

@module
abstract class NetworkModule {
  final networkService = NetworkService(
    Dio()..interceptors.add(LogInterceptor(requestBody: true, responseBody: true)),
    baseUrl: 'https://stompp.herokuapp.com',
  );
}
