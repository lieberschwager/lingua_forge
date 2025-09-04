import 'package:flutter/material.dart';
import '../services/language_service.dart';

class LanguageDropdown extends StatefulWidget {
  const LanguageDropdown({super.key});

  @override
  State<LanguageDropdown> createState() => _LanguageDropdownState();
}

class _LanguageDropdownState extends State<LanguageDropdown> {
  List<CountryInfo> countries = [];
  String? selectedLanguage;

  @override
  void initState() {
    super.initState();
    loadLanguages();
  }

  Future<void> loadLanguages() async {
    final List<String> countryCodes = [
      'de', 'en', 'fr', 'it', 'es', 'pt', 'ru', 'zh', 'ja', 'ko', 'ar', 'hi', 'tr',
      // ... bis zu 140 Codes
    ];

    final result = await fetchMultipleCountries(countryCodes);
    setState(() {
      countries = result;
      selectedLanguage = countries.first.languages.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (countries.isEmpty) {
      return const CircularProgressIndicator();
    }

    return DropdownButton<String>(
      value: selectedLanguage,
      icon: const Icon(Icons.arrow_drop_down),
      onChanged: (String? newValue) {
        setState(() {
          selectedLanguage = newValue!;
        });
      },
      items: countries.map((country) {
        final lang = country.languages.first;
        return DropdownMenuItem<String>(
          value: lang,
          child: Text('${country.flag} $lang'),
        );
      }).toList(),
    );
  }
}