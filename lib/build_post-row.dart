import 'package:flutter/material.dart';
import 'package:project_22112023/products/products.dart';
import 'package:project_22112023/products/products_page-build.dart';

class PostRow extends StatefulWidget {
  const PostRow({super.key, required this.products});
  final List<Products> products;

  @override
  State<PostRow> createState() => _PostRowState();
}

class _PostRowState extends State<PostRow> {
  @override
  Widget build(BuildContext context) {
    if (widget.products.isEmpty) {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        child: Text('Chưa có bài đăng nào.'),
      );
    }

    return Row(
      children: widget.products.asMap().entries.map((entry) {
        int index = entry.key;
        Products product = entry.value;

        return BuildPost(context, product, index);
      }).toList(),
    );
  }
}

Widget BuildPost(BuildContext context, Products products, int index) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
    child: Container(
      alignment: Alignment.center,
      height: 350,
      width: 240,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.87,
                child: ProductsPage(),
              );
            },
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black12,
                ),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: AssetImage(products.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              products.name,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Lato',
              ),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$${products.oldprice}',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 11,
                  ),
                ),
                Text(
                  '\$${products.newprice}',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato',
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 17,
                ),
                Text(
                  '${products.vote} / 5',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  'Đã bán ${products.sell}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(height: 39.6),
            Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Mua Ngay',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      minimumSize: Size(173, 50),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.add_shopping_cart_rounded,
                      color: Colors.white,
                    ),
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      minimumSize: Size(50, 50),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    ),
  );
}
