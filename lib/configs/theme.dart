import 'package:bmi_app/configs/color.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
    primary: lightPrimaryColor,
    background: lightBColor,
    onBackground: lightFontColor,
    primaryContainer: lightDeepColor,
    onPrimaryContainer: lightFontColor,
    onSecondaryContainer: lightLabelColor,
  ),
);
var darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    primary: darkPrimaryColor,
    background: darkBColor,
    onBackground: darkFontColor,
    primaryContainer: darkDeepColor,
    onPrimaryContainer: darkFontColor,
    onSecondaryContainer: darkLabelColor,
  ),
);
