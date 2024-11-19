import 'package:flutter/material.dart';
import 'package:commons/style/color_theme.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar(
      {Key? key, required this.currentIndex, required this.onTap})
      : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: ColorsTheme.primaryCoast,
      fixedColor: ColorsTheme.textColor,
      unselectedItemColor: ColorsTheme.textColor,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            activeIcon: Icon(Icons.home)),
        //todo: work on announcements page

        // BottomNavigationBarItem(
        //     icon: Icon(Icons.announcement_outlined),
        //     label: 'Avisos',
        //     activeIcon: Icon(Icons.announcement)),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Perfil',
            activeIcon: Icon(Icons.person_2)),
      ],
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
    );
  }
}
