import 'dart:async';

import 'package:flutter/material.dart';
import 'package:secret_hitler/feature/login/presentation/login_page.dart';
import 'package:secret_hitler/feature/register/presentation/register_page.dart';
import 'package:secret_hitler/secret_hitler_app.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Hi this is a Login Page'),
        GestureDetector(
          onTap: () {
            NAVCUBIT.push(const RegisterPage());
          },
          child: const Text('Register'),
        ),
      ],
    );
  }
}
