import 'package:secret_hitler/feature/login/model/login_model.dart';

abstract class LoginState {}

class LoginStateLoading extends LoginState {}

class LoginStateSuccess extends LoginState {
  LoginStateSuccess(this.model);

  final LoginModel model;
}
