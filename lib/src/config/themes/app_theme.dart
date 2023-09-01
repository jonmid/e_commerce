import 'package:e_commerce/src/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  ThemeData theme() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        scrolledUnderElevation: 0,
        color: white,
      ),
      useMaterial3: true,
      scaffoldBackgroundColor: white,
      colorSchemeSeed: primary,
    );
  }
}
