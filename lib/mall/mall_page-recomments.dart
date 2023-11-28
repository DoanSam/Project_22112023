import 'package:flutter/material.dart';
import 'package:project_22112023/build_post-row.dart';
import 'package:project_22112023/products/products.dart';

class Recomments extends StatefulWidget {
  const Recomments({super.key});

  @override
  State<Recomments> createState() => _RecommentsState();
}

class _RecommentsState extends State<Recomments> {
  List<Products> products = [
    Products(
      image: 'assets/images/shoes-1.jpg',
      name: 'Shoes',
      oldprice: 55,
      newprice: 50.0,
      sell: 33,
      vote: 4.0,
    ),
    Products(
      image: 'assets/images/shoes-5.jpg',
      name: 'Shoes',
      oldprice: 55,
      newprice: 50.0,
      sell: 33,
      vote: 4.0,
    ),
    Products(
      image: 'assets/images/shoes-6.jpg',
      name: 'Shoes',
      oldprice: 55,
      newprice: 50.0,
      sell: 33,
      vote: 4.0,
    ),
    Products(
      image: 'assets/images/shoes-7.jpg',
      name: 'Shoes',
      oldprice: 55,
      newprice: 50.0,
      sell: 33,
      vote: 4.0,
    ),
    Products(
      image: 'assets/images/shoes-9.jpg',
      name: 'Shoes',
      oldprice: 55,
      newprice: 50.0,
      sell: 33,
      vote: 4.0,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return BuildRecomment();
  }

  Widget BuildRecomment() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Text(
              'Gợi ý cho bạn',
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
              children: [
                PostRow(products: products),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
