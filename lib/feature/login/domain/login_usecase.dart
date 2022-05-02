import 'package:injectable/injectable.dart';
import 'package:secret_hitler/feature/login/data/login_repository.dart';
import 'package:secret_hitler/feature/login/model/login_model.dart';

abstract class LoginUseCase {
  Future<LoginModel> getNames();
}

@Injectable(as: LoginUseCase)
class LoginUseCaseImpl implements LoginUseCase {
  LoginUseCaseImpl(this.repository);

  final LoginRepository repository;

  @override
  Future<LoginModel> getNames() {
    return repository.getNames().then((value) {
      var names = value.data?.map((data) => data.name ?? '').toList() ?? [];
      return LoginModel(names: names + names);
    });
  }
}
