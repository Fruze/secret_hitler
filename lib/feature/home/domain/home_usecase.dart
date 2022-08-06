import 'package:injectable/injectable.dart';
import 'package:secret_hitler/feature/home/data/home_repository.dart';
import 'package:secret_hitler/network/model/post_users_request.dart';

abstract class HomeUseCase {
  Future<int> register(String name);
}

@Injectable(as: HomeUseCase)
class HomeUseCaseImpl implements HomeUseCase {
  HomeUseCaseImpl(this.repository);

  final HomeRepository repository;

  @override
  Future<int> register(String name) {
    final request = PostUsersRequest(name: name);

    return repository.postUsers(request).then((value) {
      return value.userId ?? 0;
    });
  }
}
