import 'package:flutter/material.dart';

import 'package:e_commerce/src/utils/constants/home.dart';
import 'package:e_commerce/src/presentation/views/widgets/list_categories_home.dart';
import 'package:e_commerce/src/presentation/views/widgets/custom_bottom_navigation_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.navigate_before),
        title: const Text(
          titleAppBar,
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w900),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.refresh_rounded), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ========== Section categories ==========
                ListCategoriesHome(),
              ],
            ),

            const SizedBox(height: 15),

            // ========== Section list products ==========
            Expanded(
              flex: 1,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // number columns
                  mainAxisSpacing: 21.0, // vertical
                  crossAxisSpacing: 15.0, // horizontal
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: const Image(
                          image: NetworkImage(
                              'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Black simple lamp',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '\$ 12.00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),

      // ========== Section bottomNavigationBar ==========
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
