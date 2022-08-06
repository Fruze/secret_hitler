import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:secret_hitler/feature/login/model/login_response.dart';
import 'package:secret_hitler/network/model/Post_users_response.dart';
import 'package:secret_hitler/network/model/post_users_request.dart';

part 'network_service.g.dart';

@RestApi()
abstract class NetworkService {
  factory NetworkService(Dio dio, {String baseUrl}) = _NetworkService;

  @POST('/users')
  Future<PostUsersResponse> postUsers(@Body() PostUsersRequest request);
}
