import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatefulWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: GNav(
        onTabChange: (value) => widget.onTabChange!(value),
        color: Colors.grey[400],
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey[700],
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color: Colors.white),
        backgroundColor: Colors.white,
        padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
        tabs: [
          GButton(
            icon: EvaIcons.homeOutline,
            text: 'Trang chủ',
          ),
          GButton(
            icon: Icons.storefront,
            text: 'Mua sắm',
          ),
          GButton(
            icon: EvaIcons.bellOutline,
            text: 'Thông báo',
          ),
          GButton(
            icon: Icons.account_circle_outlined,
            text: 'Trang cá nhân',
          ),
        ],
      ),
    );
  }
}
