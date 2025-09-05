import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main_menu_screen.dart'; // Navigation zur Hauptseite

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  State<LanguageSelectionScreen> createState() => _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  List<String> availableLanguages = [];
  String? sourceLanguage;
  String? targetLanguage;

  @override
  void initState() {
    super.initState();
    loadLanguages();
  }

  Future<void> loadLanguages() async {
    final String jsonString = await rootBundle.loadString('assets/data/vocab.json');
    final List<dynamic> vocabList = json.decode(jsonString);

    if (vocabList.isNotEmpty) {
      final Map<String, dynamic> firstEntry = vocabList.first;
      final List<String> keys = firstEntry.keys.where((key) => key != 'id').toList();
      setState(() {
        availableLanguages = keys;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sprachauswahl')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Ich spreche …'),
              value: sourceLanguage,
              items: availableLanguages.map((lang) {
                return DropdownMenuItem(value: lang, child: Text(lang.toUpperCase()));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  sourceLanguage = value;
                });
              },
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Ich möchte lernen …'),
              value: targetLanguage,
              items: availableLanguages.map((lang) {
                return DropdownMenuItem(value: lang, child: Text(lang.toUpperCase()));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  targetLanguage = value;
                });
              },
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: (sourceLanguage != null && targetLanguage != null)
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainMenuScreen(
                            sourceLanguage: sourceLanguage!,
                            targetLanguage: targetLanguage!,
                          ),
                        ),
                      );
                    }
                  : null,
              child: const Text('Weiter'),
            ),
          ],
        ),
      ),
    );
  }
}
