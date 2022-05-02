import 'package:flutter/material.dart';
import 'package:secret_hitler/feature/splash/presentation/splash_widget.dart';

class SecretHitlerApp extends StatefulWidget {
  const SecretHitlerApp({Key? key}) : super(key: key);

  @override
  State<SecretHitlerApp> createState() => _SecretHitlerAppState();
}

class _SecretHitlerAppState extends State<SecretHitlerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secret Hitler',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashWidget(),
    );
  }
}
