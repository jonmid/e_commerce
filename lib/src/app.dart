import 'package:flutter/material.dart';

import 'package:e_commerce/src/utils/constants/general.dart';
import 'package:e_commerce/src/config/themes/app_theme.dart';
import 'package:e_commerce/src/presentation/views/screens/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme(),
      home: const Home(),
    );
  }
}
