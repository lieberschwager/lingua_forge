import 'package:flutter/material.dart';

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
            const LanguageDropdown(),
          ],
        ),
      ),
    );
  }
}

class LanguageDropdown extends StatefulWidget {
  const LanguageDropdown({super.key});

  @override
  State<LanguageDropdown> createState() => _LanguageDropdownState();
}

class _LanguageDropdownState extends State<LanguageDropdown> {
  String selectedLanguage = 'English';

  final Map<String, String> languages = {
    'English': '🇬🇧',
    'Deutsch': '🇩🇪',
    'Français': '🇫🇷',
    'Italiano': '🇮🇹',
  };

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedLanguage,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 4,
      style: const TextStyle(fontSize: 18, color: Colors.black),
      dropdownColor: Colors.white,
      onChanged: (String? newValue) {
        setState(() {
          selectedLanguage = newValue!;
        });
      },
      items: languages.entries.map((entry) {
        return DropdownMenuItem<String>(
          value: entry.key,
          child: Text('${entry.value} ${entry.key}'),
        );
      }).toList(),
    );
  }
}