import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secret_hitler/feature/splash/presentation/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashStateInit());

  void loadSplash() async {
    await Future.delayed(const Duration(milliseconds: 350));
    emit(SplashStateSuccess());
  }
}
