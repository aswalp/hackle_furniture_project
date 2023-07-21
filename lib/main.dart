import 'package:flutter/material.dart';
import 'package:hackle_furniture_project/view/home_page/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MainHomePageUi(),
    );
  }
}
