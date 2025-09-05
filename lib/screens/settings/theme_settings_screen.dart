import 'package:flutter/material.dart';

class ThemeSettingsScreen extends StatefulWidget {
  const ThemeSettingsScreen({super.key});

  @override
  State<ThemeSettingsScreen> createState() => _ThemeSettingsScreenState();
}

class _ThemeSettingsScreenState extends State<ThemeSettingsScreen> {
  ThemeMode _selectedMode = ThemeMode.system;

  void _updateTheme(ThemeMode mode) {
    setState(() {
      _selectedMode = mode;
    });
  }

  Widget _buildOption(String label, ThemeMode mode, IconData icon) {
    return RadioListTile<ThemeMode>(
      title: Text(label),
      secondary: Icon(icon),
      value: mode,
      groupValue: _selectedMode,
      onChanged: (ThemeMode? value) {
        if (value != null) _updateTheme(value);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App-Theme')),
      body: Column(
        children: [
          _buildOption('Hell', ThemeMode.light, Icons.light_mode),
          _buildOption('Dunkel', ThemeMode.dark, Icons.dark_mode),
          _buildOption('Systemstandard', ThemeMode.system, Icons.settings),
        ],
      ),
    );
  }
}
