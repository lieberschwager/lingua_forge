import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() => runApp(const LinguaForgeApp());

class LinguaForgeApp extends StatelessWidget {
  const LinguaForgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LinguaForge',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const WelcomeScreen(),
    );
  }
