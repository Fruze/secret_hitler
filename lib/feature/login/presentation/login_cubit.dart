import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:secret_hitler/feature/login/domain/login_usecase.dart';
import 'package:secret_hitler/feature/login/presentation/login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.useCase) : super(LoginStateLoading());

  final LoginUseCase useCase;

  void getNames() async {
    useCase
        .getNames()
        .then((value) => emit(LoginStateSuccess(value)))
        .catchError(onError);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print(error.toString());
    super.onError(error, stackTrace);
  }
}
