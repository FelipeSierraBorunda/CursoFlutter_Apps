import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 129, 72, 186);

const List<Color> _colorThemes = [
_customColor,
Colors.blue,
Colors.teal,
Colors.pink,
Colors.amber,
Colors.green
];

class   AppTheme 
{
  final int selectedColor;

  AppTheme({
    required this.selectedColor
    }): assert(selectedColor >= 0 && selectedColor <= _colorThemes.length,);

  ThemeData theme()
  {
    return ThemeData
    (
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.dark
    );
  }
}
