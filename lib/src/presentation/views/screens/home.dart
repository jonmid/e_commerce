import 'package:flutter/material.dart';

import 'package:e_commerce/src/utils/constants/home.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(titleAppBar),
      ),
      body: Center(
        child: FilledButton.tonal(
          onPressed: () {},
          child: const Text('E-commerce'),
        ),
      ),
    );
  }
}
