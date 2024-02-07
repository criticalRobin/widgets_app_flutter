import 'package:flutter/material.dart';

const List<Color> appColors = [
  Colors.blue,
  Colors.indigo,
  Colors.red,
  Colors.orange,
  Colors.pink,
  Colors.yellow,
  Colors.lime
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= appColors.length,
            "Selected color must be 0 or greater than 0 and lower than ${appColors.length}");

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: appColors[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
