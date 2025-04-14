import 'package:flutter/material.dart';
import 'package:flutter_sec_3/home_screen_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Flutter 3", home: HomeScreen1());
  }
}
