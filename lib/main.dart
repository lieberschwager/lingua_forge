import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const LinguaForgeApp());
}

class LinguaForgeApp extends StatelessWidget {
  const LinguaForgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinguaForge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}