import 'package:flutter/material.dart';

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
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Willkommen bei LinguaForge'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Deine Sprachlern-App ist bereit!',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/logo.png',
              width: 120,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.language, size: 80),
            ),
          ],
        ),
      ),
    );
  }
}
