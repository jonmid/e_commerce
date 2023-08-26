import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      // backgroundColor: const Color.fromARGB(255, 17, 5, 29),
      elevation: 15,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          label: "home",
          icon: SvgPicture.asset('assets/svg/home.svg', width: 24, height: 24),
        ),
        BottomNavigationBarItem(
          label: "explore",
          icon:
              SvgPicture.asset('assets/svg/marker.svg', width: 24, height: 24),
        ),
        BottomNavigationBarItem(
          label: "Movies",
          icon: SvgPicture.asset('assets/svg/bell.svg', width: 24, height: 24),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: SvgPicture.asset('assets/svg/user.svg', width: 24, height: 24),
        )
      ],
    );
  }
}
