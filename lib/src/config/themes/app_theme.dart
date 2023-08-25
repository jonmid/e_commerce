import 'package:flutter/material.dart';

const Color _primaryColor = Color(0xFFF16A26);

class AppTheme {
  ThemeData theme() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        color: Colors.white,
      ),
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.white,
      colorSchemeSeed: _primaryColor,
    );
  }
}
