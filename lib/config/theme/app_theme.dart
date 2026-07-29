import 'package:flutter/material.dart';

const Color _customColor = Color(0xff5c11d4);

const List<Color> _colorThemes = [
  _customColor,
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
];

class AppTheme {
  int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
      // brightness: Brightness.dark,
    );
  }
}
