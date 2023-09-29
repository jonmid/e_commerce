import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'package:e_commerce/src/utils/constants/colors.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: ColorFiltered(
            colorFilter: const ColorFilter.mode(primary, BlendMode.srcIn),
            child: SvgPicture.asset(
              'assets/svg/arrow-return.svg',
              width: 22,
              height: 22,
            ),
          ),
          onPressed: () {
            context.go('/');
          },
        ),
        title: const Text('Detail product'),
      ),
      body: const Center(
        child: Text('Detail Product'),
      ),
    );
  }
}
