import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'package:e_commerce/src/utils/constants/colors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
            context.push('/');
          },
        ),
        title: const Text('Profile'),
      ),
      body: const Center(
        child: Text('Profile'),
      ),
    );
  }
}
