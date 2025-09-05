import 'package:flutter/material.dart';
import 'package:flutter_arm64_lingua/theme/primary_color_config.dart';
import 'package:flutter_arm64_lingua/theme/primary_color_controller.dart';

class PrimaryColorScreen extends StatefulWidget {
  const PrimaryColorScreen({super.key});

  @override
  State<PrimaryColorScreen> createState() => _PrimaryColorScreenState();
}

class _PrimaryColorScreenState extends State<PrimaryColorScreen> {
  String _selectedColor = 'Blau';

  void _updateColor(String name) {
  setState(() {
    _selectedColor = name;
  });
  PrimaryColorController.updateColor(name);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Primärfarbe')),
      body: ListView(
        children: PrimaryColors.options.entries.map((entry) {
          final name = entry.key;
          final color = entry.value;
          return RadioListTile<String>(
            title: Text(name),
            secondary: CircleAvatar(backgroundColor: color),
            value: name,
            groupValue: _selectedColor,
            onChanged: (value) {
              if (value != null) _updateColor(value);
            },
          );
        }).toList(),
      ),
    );
  }
}
