import 'package:flutter/material.dart';
import 'package:hackle_furniture_project/view/detail-screen/detail_screen_hackle.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Detail_Screen(),
    );
  }
}
