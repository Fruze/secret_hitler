import 'package:injectable/injectable.dart';
import 'package:secret_hitler/feature/login/model/login_response.dart';
import 'package:secret_hitler/network/network_service.dart';

abstract class LoginRepository {
  Future<LoginResponse> getNames();
}

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl(this.networkService);

  final NetworkService networkService;

  @override
  Future<LoginResponse> getNames() async {
    return await networkService.getUsers();
  }
}
