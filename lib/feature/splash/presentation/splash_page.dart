import 'package:flutter/material.dart';
import 'package:secret_hitler/constants/page_key.dart';
import 'package:secret_hitler/feature/splash/presentation/splash_widget.dart';

class SplashPage extends MaterialPage {
  const SplashPage()
      : super(
          child: const SplashWidget(),
          key: const ValueKey(PageKey.splash),
        );
}
