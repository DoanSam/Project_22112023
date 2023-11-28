import 'package:flutter/material.dart';
import 'package:project_22112023/widget_item.dart';

class CartPageBuild extends StatefulWidget {
  const CartPageBuild({super.key});

  @override
  State<CartPageBuild> createState() => _CartPageBuildState();
}

class _CartPageBuildState extends State<CartPageBuild> {
  @override
  Widget build(BuildContext context) {
    return BuildCart();
  }

  Widget BuildCart() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey[300],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'Shoes Shop',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.navigate_next_rounded,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/shoes-11.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Converse Run Star Motions',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '\$550',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '\$500',
                              style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'Lato',
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Màu sắc'),
                            SizedBox(width: 5),
                            DotsColor(dotscolor: Colors.black),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
