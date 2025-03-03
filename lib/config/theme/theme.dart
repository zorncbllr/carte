import 'package:flutter/material.dart';

ThemeData getTheme() {
  return ThemeData(
    dividerTheme: DividerThemeData(
      color: const Color.fromARGB(255, 128, 128, 128),
      thickness: 0.1,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color.fromARGB(255, 14, 14, 14),
      foregroundColor: const Color.fromARGB(255, 128, 128, 128),
    ),
    cardColor: const Color.fromARGB(255, 36, 36, 36),
    hintColor: const Color.fromARGB(255, 128, 128, 128),
    primaryColor: const Color.fromARGB(255, 4, 133, 71),
    scaffoldBackgroundColor: const Color.fromARGB(255, 14, 14, 14),
  );
}
