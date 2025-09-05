import 'package:flutter/material.dart';
import 'package:flutter_arm64_lingua/theme/font_size_controller.dart';

class FontSizeScreen extends StatefulWidget {
  const FontSizeScreen({super.key});

  @override
  State<FontSizeScreen> createState() => _FontSizeScreenState();
}

class _FontSizeScreenState extends State<FontSizeScreen> {
  double _selectedSize = FontSizeController.currentSize.value;

  void _updateSize(double size) {
    setState(() {
      _selectedSize = size;
    });
    FontSizeController.updateSize(size);
  }

  Widget _buildOption(String label, double size) {
    return RadioListTile<double>(
      title: Text(
        label,
        style: TextStyle(fontSize: size),
      ),
      value: size,
      groupValue: _selectedSize,
      onChanged: (value) {
        if (value != null) _updateSize(value);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Schriftgröße')),
      body: Column(
        children
