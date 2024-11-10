import 'package:flutter/material.dart';

var cColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181),);

var cDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

ThemeData appTheme = ThemeData().copyWith(
  colorScheme: cColorScheme,
  appBarTheme: const AppBarTheme().copyWith(
    backgroundColor: cColorScheme.onPrimaryContainer,
    foregroundColor: cColorScheme.primaryContainer,
  ),
  cardTheme: const CardTheme().copyWith(
    color: cColorScheme.secondaryContainer,
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: cColorScheme.primaryContainer,
    ),
  ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  colorScheme: cDarkColorScheme,
   cardTheme: const CardTheme().copyWith(
    color: cDarkColorScheme.secondaryContainer,
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  ),
   elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: cDarkColorScheme.primaryContainer,
      foregroundColor: cDarkColorScheme.onPrimaryContainer,
    ),
  ),
);
