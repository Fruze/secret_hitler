import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:secret_hitler/network/network_service.dart';

@module
abstract class NetworkModule {
  final networkService = NetworkService(
    Dio(),
    baseUrl: 'https://stompp.herokuapp.com',
  );
}
