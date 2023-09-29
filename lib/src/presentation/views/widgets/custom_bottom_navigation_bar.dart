import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:e_commerce/src/utils/constants/colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final void Function({required int position}) onChangeView;

  const CustomBottomNavigationBar({
    super.key,
    required this.onChangeView,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    widget.onChangeView(position: index);
    setState(() {
      _currentIndex = index;
    });
  }

  Color _getColor(int index) {
    return _currentIndex == index ? primary : Colors.grey;
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
          icon: ColorFiltered(
            colorFilter: ColorFilter.mode(_getColor(0), BlendMode.srcIn),
            child: SvgPicture.asset(
              'assets/svg/home.svg',
              width: 24,
              height: 24,
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "explore",
          icon: ColorFiltered(
            colorFilter: ColorFilter.mode(_getColor(1), BlendMode.srcIn),
            child: SvgPicture.asset(
              'assets/svg/marker.svg',
              width: 24,
              height: 24,
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "Movies",
          icon: ColorFiltered(
            colorFilter: ColorFilter.mode(_getColor(2), BlendMode.srcIn),
            child: SvgPicture.asset(
              'assets/svg/bell.svg',
              width: 24,
              height: 24,
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: ColorFiltered(
            colorFilter: ColorFilter.mode(_getColor(3), BlendMode.srcIn),
            child: SvgPicture.asset(
              'assets/svg/user.svg',
              width: 24,
              height: 24,
            ),
          ),
        )
      ],
    );
  }
}
