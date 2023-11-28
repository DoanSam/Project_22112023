import 'package:flutter/material.dart';
import 'package:project_22112023/build_post-row.dart';
import 'package:project_22112023/products/products.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  List<Products> products = [
    Products(
      image: 'assets/images/shoes-8.jpg',
      name: 'Shoes',
      oldprice: 55,
      newprice: 50.0,
      sell: 33,
      vote: 4.0,
    ),
    Products(
      image: 'assets/images/shoes-11.jpg',
      name: 'Shoes',
      oldprice: 55,
      newprice: 50.0,
      sell: 33,
      vote: 4.0,
    ),
    Products(
      image: 'assets/images/shoes-14.jpg',
      name: 'Shoes',
      oldprice: 55,
      newprice: 50.0,
      sell: 33,
      vote: 4.0,
    ),
    Products(
      image: 'assets/images/shoes-13.jpg',
      name: 'Shoes',
      oldprice: 55,
      newprice: 50.0,
      sell: 33,
      vote: 4.0,
    ),
    Products(
      image: 'assets/images/shoes-12.jpg',
      name: 'Shoes',
      oldprice: 55,
      newprice: 50.0,
      sell: 33,
      vote: 4.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BuildEvents();
  }

  Widget BuildEvents() {
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
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  'Fash Sale',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.navigate_next_rounded,
                  color: Colors.black54,
                ),
              ],
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
