
import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF1b263b);

const List<Color> _colorsTheme = [
  _customColor,
  Color(0xFF415a77),
  Color(0xFF001d3d),
  Color(0xFF333533),
  Color(0xFF5e503f),
  Color(0xFF780116),
];

class AppTheme {
  final int selectColor;

  AppTheme({required this.selectColor}):assert(selectColor >=0 && selectColor <= _colorsTheme.length);

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorsTheme[selectColor]
    );
  }
  
}