import 'package:flutter/material.dart';

class DoDidDoneTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF9F7BF6), // Primary color
      brightness: Brightness.light,
      primary: const Color(0xFF9F7BF6),  // Primary color
      secondary: const Color(0xFF4CE8B8),  // Secondary color
    ),
    useMaterial3: true,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: const Color(0xFF9F7BF6), // Primary color
      unselectedItemColor: Colors.grey, // Unselected item color
      backgroundColor: Colors.white, // Background color
      showSelectedLabels: true, // Show labels for selected items
      showUnselectedLabels: true, // Show labels for unselected items
    ),
  );
}
