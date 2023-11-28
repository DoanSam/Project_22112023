import 'dart:async';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class BannerList {
  String image;

  BannerList({required this.image});
}

class MyBanner extends StatefulWidget {
  const MyBanner({super.key, required this.bannerlist});
  final List<BannerList> bannerlist;
  @override
  State<MyBanner> createState() => _MyBannerState();
}

class _MyBannerState extends State<MyBanner> {
  late PageController _pageController;
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < widget.bannerlist.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.bannerlist.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              BannerList banner = widget.bannerlist[index];
              return BuildBanner(context, banner, index);
            },
          ),
        ),
        DotsIndicator(
          dotsCount: widget.bannerlist.length,
          position: _currentPage,
          decorator: DotsDecorator(
              activeColor: Colors.red,
              color: Colors.grey,
              size: Size.square(5),
              activeSize: Size.square(6)),
        ),
      ],
    );
  }

  Widget BuildBanner(BuildContext context, BannerList bannerlist, int index) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(top: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            image: AssetImage(bannerlist.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
