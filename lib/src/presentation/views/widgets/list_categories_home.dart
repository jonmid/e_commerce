import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'package:e_commerce/src/data/datasources/local/categories.dart';

class ListCategoriesHome extends StatelessWidget {
  const ListCategoriesHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20),
      child: SizedBox(
        height: 90,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: ((context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    context.go('/detail-product');
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: categories[index]['color'],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/svg/${categories[index]['icon']}.svg',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(categories[index]['name'])
              ],
            );
          }),
          separatorBuilder: (context, index) => const SizedBox(
            width: 25,
          ),
        ),
      ),
    );
  }
}
