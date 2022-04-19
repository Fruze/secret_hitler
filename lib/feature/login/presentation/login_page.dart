import 'package:flutter/material.dart';
import 'package:secret_hitler/constants/page_key.dart';
import 'package:secret_hitler/feature/login/presentation/login_widget.dart';

class LoginPage extends MaterialPage {
  const LoginPage()
      : super(
          child: const LoginWidget(),
          key: const ValueKey(PageKey.login),
        );
}
