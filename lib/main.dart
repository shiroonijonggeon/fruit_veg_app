import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const FruitVegApp());
}

class FruitVegApp extends StatelessWidget {
  const FruitVegApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Klasifikasi Buah & Sayur',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
