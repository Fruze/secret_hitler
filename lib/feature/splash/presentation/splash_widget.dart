import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secret_hitler/common/style/style_bold_text.dart';
import 'package:secret_hitler/feature/login/presentation/login_widget.dart';
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
              break;
            case SplashStateSuccess:
              Future.delayed(const Duration(milliseconds: 300), () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginWidget();
                }));
              });
          }

          return Container(
            color: Colors.blueGrey,
            child: const Center(
              child: Text(
                'Splash Page',
                style: StyleBoldText(),
              ),
            ),
          );
        },
      ),
    );
  }
}
