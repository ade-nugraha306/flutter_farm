import 'package:flutter/material.dart';
import 'screen_pertama.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farm House Lembang',
      home: const ScreenPertama(),
    );
  }
}
