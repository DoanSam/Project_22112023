import 'package:flutter/material.dart';
import 'package:project_22112023/build_post-column.dart';
import 'package:project_22112023/home/home_page-events.dart';
import 'package:project_22112023/home/home_page_widget.dart';
import 'package:project_22112023/products/products.dart';

import 'home_page-banner.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<BannerList> bannerlist = [
    BannerList(image: 'assets/images/image-shoes-banner-1.jpg'),
    BannerList(image: 'assets/images/image-shoes-banner-2.jpg'),
    BannerList(image: 'assets/images/image-food-banner-1.jpg'),
    BannerList(image: 'assets/images/image-shoes-banner-4.jpg'),
    BannerList(image: 'assets/images/image-hoodie-banner-1.jpg'),
    BannerList(image: 'assets/images/image-shoes-banner-5.jpg'),
    BannerList(image: 'assets/images/image-phone-banner-1.jpg'),
  ];
  List<WidgetList> widgetlist = [
    WidgetList(
      image: 'assets/images/ic-voucher-2.png',
      title: 'Săn voucher',
    ),
    WidgetList(
      image: 'assets/images/ic-shoes.jpg',
      title: 'Giày dép',
    ),
    WidgetList(
      image: 'assets/images/ic-food.jpg',
      title: 'Đồ ăn',
    ),
    WidgetList(
      image: 'assets/images/ic-smartphone.jpg',
      title: 'Điện thoại',
    ),
    WidgetList(
      image: 'assets/images/ic-pc.jpg',
      title: 'Máy tính',
    ),
    WidgetList(
      image: 'assets/images/ic-soccer.jpg',
      title: 'Thể thao',
    ),
    WidgetList(
      image: 'assets/images/ic-mouse.jpg',
      title: 'Phụ kiện',
    ),
    WidgetList(
      image: 'assets/images/ic-watch.jpg',
      title: 'Đồng hồ',
    ),
    WidgetList(
      image: 'assets/images/ic-toy.jpg',
      title: 'Đồ chơi',
    ),
  ];
  List<Products> products = [
    Products(
      image: 'assets/images/food-1.jpg',
      name: 'Mì cayyyy vai linh hon hahahahhah',
      oldprice: 55,
      newprice: 50.0,
      sell: 33,
      vote: 4.0,
    ),
    Products(
      image: 'assets/images/shoes-1.jpg',
      name: 'Shoes',
      oldprice: 55,
      newprice: 50.0,
      sell: 33,
      vote: 4.0,
    ),
    Products(
      image: 'assets/images/shoes-2.jpg',
      name: 'Shoes',
      oldprice: 55,
      newprice: 50.0,
      sell: 33,
      vote: 4.0,
    ),
    Products(
      image: 'assets/images/shoes-3.jpg',
      name: 'Shoes',
      oldprice: 55,
      newprice: 50.0,
      sell: 33,
      vote: 4.0,
    ),
    Products(
      image: 'assets/images/shoes-4.jpg',
      name: 'Shoes',
      oldprice: 55,
      newprice: 50.0,
      sell: 33,
      vote: 4.0,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyBanner(bannerlist: bannerlist),
              BuildWidget(),
              Events(),
              BuildToday(),
            ],
          ),
        ),
      ),
    );
  }

  Widget BuildWidget() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Text(
              'Tiện ích',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [MyWidgetList(widgetlist: widgetlist)],
            ),
          ),
        ],
      ),
    );
  }

  Widget BuildToday() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Text(
              'Gợi ý hôm nay',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Column(
            children: [
              PostColumn(products: products),
            ],
          ),
        ],
      ),
    );
  }
}
