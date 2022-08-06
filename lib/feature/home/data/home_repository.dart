import 'package:injectable/injectable.dart';
import 'package:secret_hitler/network/model/post_users_response.dart';
import 'package:secret_hitler/network/model/post_users_request.dart';
import 'package:secret_hitler/network/network_service.dart';

abstract class HomeRepository {
  Future<PostUsersResponse> postUsers(PostUsersRequest request);
}

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this.networkService);

  final NetworkService networkService;

  @override
  Future<PostUsersResponse> postUsers(PostUsersRequest request) async {
    return await networkService.postUsers(request);
  }
}
