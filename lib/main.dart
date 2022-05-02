import 'package:flutter/material.dart';
import 'package:secret_hitler/di/get_it.dart';
import 'package:secret_hitler/secret_hitler_app.dart';

void main() {
  configureDependencies();
  runApp(const SecretHitlerApp());
}
