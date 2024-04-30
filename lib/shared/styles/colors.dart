import 'package:flutter/material.dart';

const MaterialColor myColor = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFFFE9E1),
  100: Color(0xFFFEC9B3),
  200: Color(0xFFFEA581),
  300: Color(0xFFFE814F),
  400: Color(0xFFFD6629),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFFFD4403),
  700: Color(0xFFFC3B02),
  800: Color(0xFFFC3302),
  900: Color(0xFFFC2301),
});
const int _primaryPrimaryValue = 0xFFFD4B03;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFFFFC2BC),
  700: Color(0xFFFFAAA2),
});
const int _primaryAccentValue = 0xFFFFF0EF;
