import 'package:flutter/material.dart';
import 'package:todoapp/App%20UI/Splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SplashScreenOfApp());
  }
}
