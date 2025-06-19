import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:god_aarti_app/View/Home/home_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GNavTabBar extends StatefulWidget {
  const GNavTabBar({super.key});

  @override
  State<GNavTabBar> createState() => _GNavTabBarState();
}
 
class _GNavTabBarState extends State<GNavTabBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [HomePage(), HomePage(), HomePage()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: GNav(
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            backgroundColor: Colors.white,
            color: Colors.grey[600],
            activeColor: Colors.black,
            tabBackgroundColor: Colors.orange.shade400,
            gap: 8,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            tabBorderRadius: 20.0,
            tabs: [
              GButton(icon: CupertinoIcons.hand_raised, text: 'Aarti'),
              GButton(icon: Icons.local_florist, text: 'Wallpaper'),
              GButton(
                icon: CupertinoIcons.arrow_down_to_line_alt,
                text: 'Downloads',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
