import 'package:flutter/material.dart';

class MainMenuScreen extends StatelessWidget {
  final String sourceLanguage;
  final String targetLanguage;

  const MainMenuScreen({
    super.key,
    required this.sourceLanguage,
    required this.targetLanguage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LinguaForge Hauptmenü'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sprache: $sourceLanguage → $targetLanguage',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const Text(
              'Was möchtest du tun?',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            MenuButton(
              label: 'Vokabeltrainer',
              icon: Icons.school,
              onPressed: () {
                // TODO: Navigation zum Vokabeltrainer
              },
            ),
            MenuButton(
              label: 'Quiz starten',
              icon: Icons.quiz,
              onPressed: () {
                // TODO: Navigation zum Quiz
              },
            ),
            MenuButton(
              label: 'Einstellungen',
              icon: Icons.settings,
              onPressed: () {
                // TODO: Navigation zu den Einstellungen
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  const MenuButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, size: 24),
        label: Text(label, style: const TextStyle(fontSize: 16)),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          minimumSize: const Size.fromHeight(50),
        ),
      ),
    );
  }
}