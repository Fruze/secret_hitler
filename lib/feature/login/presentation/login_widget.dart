import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secret_hitler/common/style/style_normal_text.dart';
import 'package:secret_hitler/di/get_it.dart';
import 'package:secret_hitler/feature/login/presentation/login_cubit.dart';
import 'package:secret_hitler/feature/login/presentation/login_state.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:stomp_dart_client/stomp_frame.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  StompClient? client;

  void onConnectCallback(StompFrame connectFrame) {
    print('hahaha in');

    client?.send(
      destination: '/topic/messages',
      body: '{"from":"","text":"andrea"}',
      headers: {},
    );

    client?.subscribe(
      destination: '/topic/messages/andrea',
      headers: {},
      callback: (frame) {
        // Received a frame for this subscription
        print('hahaha ads');
        print(frame.body);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    client = StompClient(
      config: StompConfig(
        url: 'wss://stompp.herokuapp.com/returning',
      // config: StompConfig.SockJS(  --> Alternative
        // url: 'https://stompp.herokuapp.com/returning',
        onConnect: onConnectCallback,
        beforeConnect: () async {
          print('hahaha before connect');
        },
        onStompError: (stompFrame) {
          print('hahaha error $stompFrame');
        },
        onDebugMessage: (stompFrame) {
          print('hahaha debug $stompFrame');
        },
        onWebSocketError: (stompFrame) {
          print('hahaha ws error $stompFrame');
        },
      ),
    );

    client?.activate();
    // client?.ack(id: 'asd'); --> This causes the error

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
