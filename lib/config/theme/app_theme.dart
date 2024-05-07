import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF722F37);

const List<Color> _colorThemes = [
  _customColor,
  Colors.red,
  Color(0xFFD86C75),
  Color(0xFFE8A4A9),
  Color(0xFFE8A4A9),
  Color(0xFFE8A4A9),
  Colors.indigo,
  Colors.blue
 ];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0}) 
    : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length -1,
            'El color debe ser entre 0 y ${_colorThemes.length}');


  ThemeData theme() {
    return ThemeData(colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
