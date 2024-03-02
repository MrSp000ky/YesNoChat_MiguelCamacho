import 'package:flutter/material.dart';

const _customColor = Color.fromARGB(255, 71, 253, 253);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.deepPurpleAccent,
  Colors.lightGreen,
  Colors.red,
  Colors.indigoAccent
];

class AppTheme{
  final int selectedColor;

  AppTheme({required this.selectedColor}):
  assert(selectedColor >= 0 && selectedColor < _colorThemes.length, "Eh padrino relax es del 0 al 4");

  ThemeData theme()=>ThemeData(
    useMaterial3: true,
    colorSchemeSeed: _colorThemes[selectedColor],
  );

}