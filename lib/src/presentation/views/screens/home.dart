import 'package:flutter/material.dart';

import 'package:e_commerce/src/presentation/views/widgets/custom_app_bar.dart';
import 'package:e_commerce/src/presentation/views/widgets/list_categories_home.dart';
import 'package:e_commerce/src/presentation/views/widgets/list_products.dart';
import 'package:e_commerce/src/presentation/views/widgets/custom_bottom_navigation_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // ========== Section appBar ==========
      appBar: CustomAppBar(),

      // ========== Section body ==========
      body: Column(
        children: [
          // ========== Section list categories ==========
          ListCategoriesHome(),

          // ========== Section list products ==========
          ListProducts(),
        ],
      ),

      // ========== Section bottomNavigationBar ==========
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
