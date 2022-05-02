import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:secret_hitler/common/style/style_normal_text.dart';
import 'package:secret_hitler/network/network_service.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final network = NetworkService(Dio(), baseUrl: 'https://gorest.co.in/public-api/');
    network.getUsers().then((value) {
      print('hahaha $value');
    }).onError((error, stackTrace) {
      print('hahaha error $error');
    });

    return Column(
      children: const [
        Text(
          'Hi this is a Login Page',
          style: StyleNormalText(),
        ),
        Text(
          'Fill me up',
          style: StyleNormalText(),
        ),
      ],
    );
  }
}
