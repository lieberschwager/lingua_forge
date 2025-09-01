import 'package:flutter/material.dart';
import 'modules/greetings.dart';

void main() {
  runApp(const LinguaApp());
}

class LinguaApp extends StatelessWidget {
  const LinguaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lingua Forge',
      home: Scaffold(
        appBar: AppBar(title: const Text('Sprachgrüße')),
        body: ListView(
          children: greetings.entries.map((entry) {
            return ListTile(
              title: Text('${entry.key.toUpperCase()}: ${entry.value}'),
            );
          }).toList(),
        ),
      ),
    );
  }
}