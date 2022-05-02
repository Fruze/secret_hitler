import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'network_service.g.dart';

@RestApi()
abstract class NetworkService {
  factory NetworkService(Dio dio, {String baseUrl}) = _NetworkService;

  @GET('/users')
  Future<String> getUsers();
}
