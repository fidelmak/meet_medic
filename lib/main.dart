import 'package:flutter/material.dart';
import 'package:portfolio/screen/home_screen.dart';
import 'package:portfolio/screen/mobile_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const SafeArea(child: Responsive()),
    );
  }
}

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
