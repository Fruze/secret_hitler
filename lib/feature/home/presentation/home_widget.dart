import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secret_hitler/common/style/style_bold_text.dart';
import 'package:secret_hitler/common/style/style_normal_text.dart';
import 'package:secret_hitler/di/get_it.dart';
import 'package:secret_hitler/feature/home/presentation/home_cubit.dart';
import 'package:secret_hitler/feature/home/presentation/home_state.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..register("Andrea"),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (BuildContext context, state) {
          switch (state.runtimeType) {
            // case LoginStateLoading:
            //   return const Text('loading');
            // case LoginStateSuccess:
            //   final success = state as LoginStateSuccess;
            //   final names = success.model.names;
            //
            //   return ListView.builder(
            //     itemCount: names.length,
            //     itemBuilder: (context, index) {
            //       return Text(names[index], style: const StyleNormalText());
            //     },
            //   );
            default:
              return Column(
                children: [
                  const Text(
                    "Secret Hitler",
                    style: StyleBoldText(),
                  ),
                  const Text(
                    "Insert your name",
                    style: StyleNormalText(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Container(
                          color: Colors.grey,
                          child: const Text(
                            "Create game",
                            style: StyleNormalText(),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          color: Colors.grey,
                          child: const Text(
                            "Join game",
                            style: StyleNormalText(),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              );
          }
        },
      ),
    );
  }
}
