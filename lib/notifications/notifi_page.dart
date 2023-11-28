import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:project_22112023/notifications/notifi_build.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  List<NotificationList> notificationlist = [
    NotificationList(
      icon: Icons.calendar_month_outlined,
      iconColor: Colors.amber,
      title: 'Giảm giá tháng 11',
      content: 'Khuyến mãi mua 2 tặng 1.',
    ),
    NotificationList(
      icon: Icons.shopping_basket_rounded,
      iconColor: Colors.blue,
      title: 'Đặt hàng',
      content: 'Bạn đã đặt hàng giày Nike Air Force One',
    ),
    NotificationList(
      icon: Icons.newspaper_rounded,
      iconColor: Colors.green,
      title: 'Sale mới 15%',
      content: 'Giảm giá các hãng giày Nike, Balenciaga, Adidas,...',
    ),
    NotificationList(
      icon: Icons.highlight_remove_sharp,
      iconColor: Colors.red,
      title: 'Hủy đơn hàng',
      content: 'Bạn đã hủy đơn hàng giày Nike Air Force One',
    ),
    NotificationList(
      icon: Icons.newspaper_rounded,
      iconColor: Colors.green,
      title: 'Sale mới 15%',
      content: 'Giảm giá các hãng giày Nike, Balenciaga, Adidas,...',
    ),
    NotificationList(
      icon: Icons.highlight_remove_sharp,
      iconColor: Colors.red,
      title: 'Hủy đơn hàng',
      content: 'Bạn đã hủy đơn hàng giày Nike Air Force One',
    ),
    NotificationList(
      icon: Icons.calendar_month_outlined,
      iconColor: Colors.amber,
      title: 'Giảm giá tháng 11',
      content: 'Khuyến mãi mua 2 tặng 1.',
    ),
    NotificationList(
      icon: Icons.shopping_basket_rounded,
      iconColor: Colors.blue,
      title: 'Đặt hàng',
      content: 'Bạn đã đặt hàng giày Nike Air Force One',
    ),
    NotificationList(
      icon: Icons.newspaper_rounded,
      iconColor: Colors.green,
      title: 'Sale mới 15%',
      content: 'Giảm giá các hãng giày Nike, Balenciaga, Adidas,...',
    ),
    NotificationList(
      icon: Icons.highlight_remove_sharp,
      iconColor: Colors.red,
      title: 'Hủy đơn hàng',
      content: 'Bạn đã hủy đơn hàng giày Nike Air Force One',
    ),
    NotificationList(
      icon: Icons.newspaper_rounded,
      iconColor: Colors.green,
      title: 'Sale mới 15%',
      content: 'Giảm giá các hãng giày Nike, Balenciaga, Adidas,...',
    ),
    NotificationList(
      icon: Icons.highlight_remove_sharp,
      iconColor: Colors.red,
      title: 'Hủy đơn hàng',
      content: 'Bạn đã hủy đơn hàng giày Nike Air Force One',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            BuildNotifi(),
          ],
        ),
      ),
    );
  }

  Widget BuildNotifi() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Row(
                children: [
                  Text(
                    'Thông báo',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},

                    icon: Icon(EvaIcons.bellOutline),
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            NotifiBuild(notificationlist: notificationlist),
          ],
        ),
      ),
    );
  }
}
