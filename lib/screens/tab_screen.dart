import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pharmix/Utilities/colors.dart';
import 'package:pharmix/Utilities/image_path.dart';
import 'package:pharmix/screens/favorite_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() {
    return _TabScreen();
  }
}

class _TabScreen extends State<TabScreen> {
  int _selectedScreenIndex = 1;

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = const FavoriteScreen();

    return Scaffold(
      backgroundColor: primaryColor,
      // extendBodyBehindAppBar: true,
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedScreenIndex,
        onTap: _selectScreen,
        height: 65,
        buttonBackgroundColor: const Color(0xFF1479FF),
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(
          milliseconds: 400,
        ),
        items: [
          Image.asset(
            navigationHomeIcon,
            color: (_selectedScreenIndex == 0) ? Colors.white : null,
          ),
          Image.asset(
            navigationHeartIcon,
            color: (_selectedScreenIndex == 1) ? Colors.white : null,
          ),
          Image.asset(
            navigationOrderIcon,
            color: (_selectedScreenIndex == 2) ? Colors.white : null,
          ),
          Image.asset(
            navigationProfileIcon,
            color: (_selectedScreenIndex == 3) ? Colors.white : null,
          ),
        ],
      ),
      body: activeScreen,
    );
  }
}
