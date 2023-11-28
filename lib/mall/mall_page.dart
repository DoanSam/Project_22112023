import 'package:flutter/material.dart';
import 'package:project_22112023/mall/mall_page-categories.dart';
import 'package:project_22112023/mall/mall_page-post-1.dart';
import 'package:project_22112023/mall/mall_page-recomments.dart';

class MallPage extends StatefulWidget {
  const MallPage({super.key});

  @override
  State<MallPage> createState() => _MallPageState();
}

class _MallPageState extends State<MallPage> {
  List<CategoriesList> categorieslist = [
    CategoriesList(
      image: 'assets/images/ic-hoodie.jpg',
      title: 'Quần áo',
    ),
    CategoriesList(
      image: 'assets/images/ic-shoes.jpg',
      title: 'Giày dép',
    ),
    CategoriesList(
      image: 'assets/images/ic-food.jpg',
      title: 'Đồ ăn',
    ),
    CategoriesList(
      image: 'assets/images/ic-smartphone.jpg',
      title: 'Điện thoại',
    ),
    CategoriesList(
      image: 'assets/images/ic-pc.jpg',
      title: 'Máy tính',
    ),
    CategoriesList(
      image: 'assets/images/ic-soccer.jpg',
      title: 'Thể thao',
    ),
    CategoriesList(
      image: 'assets/images/ic-mouse.jpg',
      title: 'Phụ kiện',
    ),
    CategoriesList(
      image: 'assets/images/ic-watch.jpg',
      title: 'Đồng hồ',
    ),
    CategoriesList(
      image: 'assets/images/ic-toy.jpg',
      title: 'Đồ chơi',
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
              BuildCategory(),
              Recomments(),
              MallPost(),
              MallPost(),
              MallPost(),
            ],
          ),
        ),
      ),
    );
  }

  Widget BuildCategory() {
    return Container(
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
            child: Text('Thể loại', style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Categories(categorieslist: categorieslist),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
