import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secret_hitler/common/style/style_normal_text.dart';
import 'package:secret_hitler/di/get_it.dart';
import 'package:secret_hitler/feature/login/presentation/login_cubit.dart';
import 'package:secret_hitler/feature/login/presentation/login_state.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginCubit>()..getNames(),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (BuildContext context, state) {
          switch (state.runtimeType) {
            case LoginStateLoading:
              return const Text('loading');
            case LoginStateSuccess:
              final success = state as LoginStateSuccess;
              final names = success.model.names;

              return ListView.builder(
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return Text(names[index], style: const StyleNormalText());
                },
              );
            default:
              return const Text('default');
          }
        },
      ),
    );
  }
}
