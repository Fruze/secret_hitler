import 'package:flutter/material.dart';
import 'package:secret_hitler/constants/page_key.dart';
import 'package:secret_hitler/feature/register/presentation/register_widget.dart';

class RegisterPage extends MaterialPage {
  const RegisterPage()
      : super(
          child: const RegisterWidget(),
          key: const ValueKey(PageKey.registerPage),
        );
}
