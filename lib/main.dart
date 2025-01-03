import 'package:flutter/material.dart';
import 'package:zenify/screens/1_main_navigation_screen/main_navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Zenify",
      home: MainNavigationScreen(),
    );
  }
}
