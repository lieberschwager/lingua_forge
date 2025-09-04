import 'package:flutter/material.dart';
import '../widgets/language_dropdown.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', height: 120),
            const SizedBox(height: 20),
            const Text(
              'Willkommen bei LinguaForge',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const Text('Sprache auswählen:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            const LanguageDropdown(), // ← zeigt nur 1 Sprache
          ],
        ),
      ),
    );
  }
}