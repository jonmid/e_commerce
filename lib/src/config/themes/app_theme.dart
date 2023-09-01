import 'package:flutter/material.dart';

import 'package:e_commerce/src/utils/constants/colors.dart';

class AppTheme {
  ThemeData theme() {
    return ThemeData(
      fontFamily: 'Gelasio',
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
