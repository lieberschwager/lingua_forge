import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const LinguaApp());
}

class LinguaApp extends StatelessWidget {
  const LinguaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinguaForge',
      home: const WelcomeScreen(),
    );
  }
}