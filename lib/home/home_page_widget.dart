import 'package:flutter/material.dart';

class WidgetList {
  String image;
  String title;

  WidgetList({
    required this.image,
    required this.title,
  });
}

class MyWidgetList extends StatefulWidget {
  const MyWidgetList({super.key, required this.widgetlist});
  final List<WidgetList> widgetlist;

  @override
  State<MyWidgetList> createState() => _MyWidgetListState();
}

class _MyWidgetListState extends State<MyWidgetList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: widget.widgetlist.asMap().entries.map((e) {
      int index = e.key;
      WidgetList category = e.value;
      return BuildWidget(context, category, index);
    }).toList());
  }

  Widget BuildWidget(
      BuildContext context, WidgetList widgetwist, int index) {
    return Container(
      width: 80,
      child: TextButton(
        onPressed: () {},
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage(widgetwist.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              widgetwist.title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
