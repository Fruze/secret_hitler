import 'package:flutter/material.dart';
import 'package:secret_hitler/feature/splash/presentation/splash_widget.dart';

void main() {
  runApp(const SecretHitlerApp());
}

class SecretHitlerApp extends StatelessWidget {
  const SecretHitlerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secret Hitler',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashWidget(),
    );
  }
}
