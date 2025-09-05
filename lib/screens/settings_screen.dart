import 'package:flutter/material.dart';
import 'package:flutter_arm64_lingua/screens/settings/theme_settings_screen.dart';
import 'package:flutter_arm64_lingua/screens/settings/primary_color_screen.dart';
import 'package:flutter_arm64_lingua/screens/settings/font_size_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Einstellungen')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('App-Theme'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ThemeSettingsScreen(),
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
  title: const Text('Primärfarbe'),
  trailing: const Icon(Icons.arrow_forward_ios),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PrimaryColorScreen(),
      ),
    );
  },
),
          const Divider(),
          ListTile(
            title: const Text('Schriftgröße'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigation zur Schriftgröße-Seite (später einbauen)
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Layout-Stil'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigation zur Layout-Seite (später einbauen)
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Sprache der Oberfläche'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigation zur Sprache-Seite (später einbauen)
            },
          ),
          const Divider(),
ListTile(
  title: const Text('Schriftgröße'),
  trailing: const Icon(Icons.arrow_forward_ios),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const FontSizeScreen(),
      ),
    );
  },
),
const Divider(),
          ListTile(
            title: const Text('Debug-Modus'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigation zur Debug-Seite (später einbauen)
            },
          ),
        ],
      ),
    );
  }
}
