import 'package:flutter/material.dart';

import 'package:e_commerce/src/config/router/app_router.dart';
import 'package:e_commerce/src/utils/constants/general.dart';
import 'package:e_commerce/src/config/themes/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme(),
    );
  }
}
