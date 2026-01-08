import 'package:flutter/material.dart';

const Color _customColor = Colors.green;
const List<Color> _colorThemes = [
  _customColor,
  Colors.green,
  Colors.blue,
  Colors.red,
  Colors.purple,
  Colors.orange,
];

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert(selectedColor >= 0, 'selectedColor deber ser mayor a 0'),
        assert(selectedColor < _colorThemes.length, 'selectedColor deber ser menor a ${_colorThemes.length - 1}');
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.dark
    );
  }
}