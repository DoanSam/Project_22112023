import 'package:flutter/material.dart';
import 'package:project_22112023/controls/bottom.dart';
import 'package:project_22112023/controls/header.dart';
import 'package:project_22112023/home/home_page.dart';
import 'package:project_22112023/mall/mall_page.dart';
import 'package:project_22112023/notifications/notifi_page.dart';
import 'package:project_22112023/profiles/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  bool sets = false;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  void navigateBottom(int index) {
    setState(
      () {
        _selectedIndex = index;
        _pageController.animateToPage(
          index,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _selectedIndex == 3
          ? null
          : AppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: 80,
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              title: HomePageHeader(
                title: 'SHOP',
              ),
            ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          HomePage(),
          MallPage(),
          NotificationsPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottom(index),
      ),
    );
  }
}
