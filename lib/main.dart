import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: unused_import
import 'package:hackle_furniture_project/view/detail-screen/detail_screen_hackle.dart';
// import 'package:hackle_furniture_project/view/wishlist_screen/wishlist_screen_huckle.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: DetailScreen(),
    );
  }
}
