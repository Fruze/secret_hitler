import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secret_hitler/feature/splash/presentation/splash_cubit.dart';
import 'package:secret_hitler/feature/splash/presentation/splash_state.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(),
      child: BlocBuilder<SplashCubit, SplashState>(
        builder: (BuildContext context, state) {
          switch (state.runtimeType) {
            case SplashStateInit:
              final _cubit = context.read<SplashCubit>();
              _cubit.loadSplash();
              return Container(color: Colors.red);
            case SplashStateSuccess:
              return Container(color: Colors.blueGrey);
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
