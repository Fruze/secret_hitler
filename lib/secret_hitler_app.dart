import 'package:flutter/material.dart';
import 'package:secret_hitler/navigation/navigation_service.dart';

class SecretHitlerApp extends StatefulWidget {
  const SecretHitlerApp({Key? key}) : super(key: key);

  @override
  State<SecretHitlerApp> createState() => _SecretHitlerAppState();
}

class _SecretHitlerAppState extends State<SecretHitlerApp> {
  List<Page> _pages = NAVSERVICE.pages;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secret Hitler',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Navigator(
        pages: List.of(_pages),
      ),
    );
  }
}
