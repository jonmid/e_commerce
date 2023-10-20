import 'package:flutter/material.dart';

import 'package:e_commerce/src/presentation/views/widgets/custom_app_bar.dart';
import 'package:e_commerce/src/presentation/views/widgets/list_categories_home.dart';
import 'package:e_commerce/src/presentation/views/widgets/list_products.dart';
import 'package:e_commerce/src/presentation/views/widgets/list_bookmarks.dart';
import 'package:e_commerce/src/presentation/views/widgets/list_notifications.dart';
import 'package:e_commerce/src/presentation/views/widgets/view_profile.dart';
import 'package:e_commerce/src/presentation/views/widgets/custom_bottom_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _views = [
    const ListProducts(),
    const ListBookmarks(),
    const ListNotifications(),
    const ViewProfile(),
  ];

  void changeView({required int position}) {
    setState(() {
      _currentIndex = position;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ========== Section appBar ==========
      appBar: const CustomAppBar(),

      // ========== Section body ==========
      body: Column(
        children: [
          // ========== Section list categories ==========
          const ListCategoriesHome(),

          // ========== Section list products ==========
          _views[_currentIndex],
        ],
      ),

      // ========== Section bottomNavigationBar ==========
      bottomNavigationBar: CustomBottomNavigationBar(onChangeView: changeView),
    );
  }
}
