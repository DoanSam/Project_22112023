import 'package:flutter/material.dart';
import 'package:project_22112023/widget_item.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return BuildProducts('assets/images/shoes-5.jpg');
  }

  Widget BuildProducts(String imagepath) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 250,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagepath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.withOpacity(.2),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.navigate_before_rounded,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.withOpacity(.2),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_outline,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 475,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Giày này tên là gì vậy?',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Lato',
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$500',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 11,
                        ),
                      ),
                      SizedBox(width: 2),
                      Text(
                        '\$499',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Màu sắc',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 10),
                      DotsColor(dotscolor: Colors.black),
                      SizedBox(width: 10),
                      DotsColor(dotscolor: Colors.red),
                      SizedBox(width: 10),
                      DotsColor(dotscolor: Colors.blue),
                      SizedBox(width: 10),
                      DotsColor(dotscolor: Colors.grey),
                      SizedBox(width: 10),
                      DotsColor(dotscolor: Colors.orange),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundImage:
                            AssetImage('assets/images/shoes-7.jpg'),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shoes Shop',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              fontFamily: 'Lato',
                            ),
                          ),
                          Text(
                            '200 Sản phẩm',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 27,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Xem shop',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 197, 53, 43),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  BuildDescription(),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Thêm vào giỏ hàng',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          minimumSize: Size(60, 50),
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Mua ngay',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          minimumSize: Size(250, 50),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget BuildDescription() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
      width: double.infinity,
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
              'Mô tả',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            height: 200,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                      'Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới. Từ học sinh tiểu học cho đến các vận động viên chuyên nghiệp, không ai có thể phủ nhận sức hấp dẫn của Nike. Nếu bạn khảo sát xem có bao nhiêu người đã hoặc đang sở hữu các sản phẩm của Nike, thì con số này sẽ khiến bạn bất ngờ.'),
                  Text(
                    'Chất lượng của sản phẩm tạo nên uy tín của thương hiệu. Nhưng không thể phủ nhận vai trò của những chiến lược marketing vô cùng hiệu quả đã góp phần tạo nên thành công của Nike ngày hôm nay. Nike là nhà cung cấp giày và quần áo thể thao hàng đầu thế giới, đồng thời là nhà sản xuất quần áo thể thao lớn, với tổng doanh thu hơn 18,6 tỷ USD trong năm tài chính 2008. Tính đến năm 2008, công ty có hơn 30.000 nhân viên trên toàn thế giới.',
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
