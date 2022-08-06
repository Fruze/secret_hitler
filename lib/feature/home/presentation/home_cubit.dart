import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:secret_hitler/feature/home/domain/home_usecase.dart';
import 'package:secret_hitler/feature/home/presentation/home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.useCase) : super(HomeStateLoading());

  final HomeUseCase useCase;

  void register(String name) async {
    useCase
        .register(name)
        .then((value) => debugPrint(value.toString()))
        .catchError(onError);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    debugPrint(error.toString());
    super.onError(error, stackTrace);
  }
}
