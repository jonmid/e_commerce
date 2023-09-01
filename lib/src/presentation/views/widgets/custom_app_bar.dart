import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:e_commerce/src/utils/constants/colors.dart';
import 'package:e_commerce/src/utils/constants/home.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: ColorFiltered(
          colorFilter: const ColorFilter.mode(textSecondary, BlendMode.srcIn),
          child: SvgPicture.asset(
            'assets/svg/search.svg',
            width: 22,
            height: 22,
          ),
        ),
        onPressed: () {},
      ),
      title: const Center(
        child: Text(
          titleAppBar,
          style: TextStyle(
            color: primary,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: ColorFiltered(
            colorFilter: const ColorFilter.mode(textSecondary, BlendMode.srcIn),
            child: SvgPicture.asset(
              'assets/svg/cart.svg',
              width: 22,
              height: 21,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
