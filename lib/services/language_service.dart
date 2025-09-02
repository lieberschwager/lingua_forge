import 'dart:convert';
import 'package:http/http.dart' as http;

class CountryInfo {
  final String name;
  final String flag;
  final List<String> languages;
  final String currencyCode;
  final String currencySymbol;

  CountryInfo({
    required this.name,
    required this.flag,
    required this.languages,
    required this.currencyCode,
    required this.currencySymbol,
  });

  factory CountryInfo.fromJson(Map<String, dynamic> json) {
    return CountryInfo(
      name: json['name'],
      flag: json['flag'],
      languages: List<String>.from(json['language']),
      currencyCode: json['currency']['code'],
      currencySymbol: json['currency']['symbol'],
    );
  }
}

Future<CountryInfo?> fetchCountryInfo(String countryName) async {
  const String token = 'f1b39c5cfe46c5a8eb5aa091582f9281ce735d81'; // ✅ Dein Token
  final Uri url = Uri.parse('https://aaapis.com/api/v1/info/country/');

  final response = await http.post(
    url,
    headers: {
      'Authorization': 'Token $token',
      'Content-Type': 'application/json',
    },
    body: jsonEncode({'country': countryName}),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return CountryInfo.fromJson(data);
  } else {
    print('Fehler: ${response.statusCode}');
    return null;
  }
}

Future<List<CountryInfo>> fetchMultipleCountries(List<String> countryNames) async {
  List<CountryInfo> results = [];

  for (String name in countryNames) {
    final info = await fetchCountryInfo(name);
    if (info != null) {
      results.add(info);
    }
  }

  return results;
}import 'dart:convert';
import 'package:http/http.dart' as http;

class CountryInfo {
  final String name;
  final String flag;
  final List<String> languages;
  final String currencyCode;
  final String currencySymbol;

  CountryInfo({
    required this.name,
    required this.flag,
    required this.languages,
    required this.currencyCode,
    required this.currencySymbol,
  });

  factory CountryInfo.fromJson(Map<String, dynamic> json) {
    return CountryInfo(
      name: json['name'],
      flag: json['flag'],
      languages: List<String>.from(json['language']),
      currencyCode: json['currency']['code'],
      currencySymbol: json['currency']['symbol'],
    );
  }
}

Future<CountryInfo?> fetchCountryInfo(String countryName) async {
  const String token = 'f1b39c5cfe46c5a8eb5aa091582f9281ce735d81'; // ✅ Dein Token
  final Uri url = Uri.parse('https://aaapis.com/api/v1/info/country/');

  final response = await http.post(
    url,
    headers: {
      'Authorization': 'Token $token',
      'Content-Type': 'application/json',
    },
    body: jsonEncode({'country': countryName}),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return CountryInfo.fromJson(data);
  } else {
    print('Fehler: ${response.statusCode}');
    return null;
  }
}

Future<List<CountryInfo>> fetchMultipleCountries(List<String> countryNames) async {
  List<CountryInfo> results = [];

  for (String name in countryNames) {
    final info = await fetchCountryInfo(name);
    if (info != null) {
      results.add(info);
    }
  }

  return results;
}