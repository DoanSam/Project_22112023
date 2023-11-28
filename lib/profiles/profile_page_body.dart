import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:project_22112023/build_post-row.dart';
import 'package:project_22112023/products/products.dart';

class ProfilePageBody extends StatefulWidget {
  const ProfilePageBody({super.key});

  @override
  State<ProfilePageBody> createState() => _ProfilePageBodyState();
}

class _ProfilePageBodyState extends State<ProfilePageBody> {
  List<Products> products = [
    Products(
      image: 'assets/images/shoes-1.jpg',
      name: 'Balenciaga Track 3.0',
      oldprice: 50.5,
      newprice: 48.0,
      sell: 77,
      vote: 4.1,
    ),
    Products(
      image: 'assets/images/shoes-2.jpg',
      name: 'Balenciaga Track 3.0',
      oldprice: 50.5,
      newprice: 48.0,
      sell: 77,
      vote: 4.1,
    ),
    Products(
      image: 'assets/images/shoes-6.jpg',
      name: 'Balenciaga Track 3.0',
      oldprice: 50.5,
      newprice: 48.0,
      sell: 77,
      vote: 4.1,
    ),
    Products(
      image: 'assets/images/shoes-7.jpg',
      name: 'Nike M2K Tekno Grey',
      oldprice: 89,
      newprice: 77,
      sell: 70,
      vote: 4.2,
    ),
    Products(
      image: 'assets/images/shoes-10.jpg',
      name: 'Converse Run Star Hike',
      oldprice: 89,
      newprice: 77,
      sell: 70,
      vote: 4.2,
    ),
    Products(
      image: 'assets/images/shoes-11.jpg',
      name: 'Converse Run Star Motion',
      oldprice: 89,
      newprice: 77,
      sell: 70,
      vote: 4.2,
    ),
    Products(
      image: 'assets/images/shoes-12.jpg',
      name: 'MLB Chunky Black White',
      oldprice: 89,
      newprice: 77,
      sell: 70,
      vote: 4.2,
    ),
    Products(
      image: 'assets/images/hoodie-1.jpg',
      name: 'Hoodie',
      oldprice: 89,
      newprice: 77,
      sell: 70,
      vote: 4.2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: Column(
        children: [
          BuildStatus(),
          SizedBox(height: 10),
          BuildMyPost(),
        ],
      ),
    );
  }

  Widget BuildStatus() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey[200],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(EvaIcons.calendarOutline),
                SizedBox(width: 10),
                Text(
                  'Đơn mua',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  'Lịch sử mua hàng',
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(
                        Icons.wallet,
                        color: Colors.black54,
                      ),
                      Text(
                        'Xác nhận',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(
                        EvaIcons.shoppingBagOutline,
                        color: Colors.black54,
                      ),
                      Text(
                        'Lấy hàng',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(
                        EvaIcons.carOutline,
                        color: Colors.black54,
                      ),
                      Text(
                        'Giao hàng',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(
                        Icons.stars_outlined,
                        color: Colors.black54,
                      ),
                      Text(
                        'Đánh giá',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget BuildMyPost() {
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
              'Tin của bạn',
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
