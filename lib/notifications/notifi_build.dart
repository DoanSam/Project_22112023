import 'package:flutter/material.dart';

class NotificationList {
  IconData icon;
  Color iconColor;
  String title;
  String content;

  NotificationList({
    required this.icon,
    this.iconColor = Colors.blue,
    required this.title,
    required this.content,
  });
}

class NotifiBuild extends StatefulWidget {
  final List<NotificationList> notificationlist;

  const NotifiBuild({super.key, required this.notificationlist});

  @override
  State<NotifiBuild> createState() => _NotifiBuildState();
}

class _NotifiBuildState extends State<NotifiBuild> {
  @override
  Widget build(BuildContext context) {
    if (widget.notificationlist.isEmpty) {
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(bottom: 10),
        child: Text('Chưa có thông báo nào.'),
      );
    }

    return Column(
        children: widget.notificationlist.asMap().entries.map((e) {
      int index = e.key;
      NotificationList notifi = e.value;
      return BuildNotifi(context, notifi, index);
    }).toList());
  }

  Widget BuildNotifi(
      BuildContext context, NotificationList notificationlist, int index) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(
              notificationlist.icon,
              color: notificationlist.iconColor,
              size: 30,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 280,
                  child: Text(
                    notificationlist.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                Container(
                  width: 280,
                  child: Text(
                    notificationlist.content,
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.navigate_next_rounded,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
