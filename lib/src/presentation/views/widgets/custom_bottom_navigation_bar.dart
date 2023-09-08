import 'package:e_commerce/src/presentation/views/screens/home.dart';
import 'package:e_commerce/src/presentation/views/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:e_commerce/src/utils/constants/colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final int _currentIndex = 0;

  final List<Widget> _screens = [
    const Home(),
    const Placeholder(),
    const Placeholder(),
    const Profile(),
  ];

  void _onTabTapped(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _screens[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTabTapped,
      type: BottomNavigationBarType.fixed,
      // backgroundColor: const Color.fromARGB(255, 17, 5, 29),
      elevation: 15,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: primary,
      unselectedItemColor: disabledButton,
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
