import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'src/utils/firebase/firebase_options.dart';
import 'package:e_commerce/src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}
