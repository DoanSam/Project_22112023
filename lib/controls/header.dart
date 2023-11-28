import 'package:flutter/material.dart';
import 'package:project_22112023/controls/button_header.dart';

// ignore: must_be_immutable
class HomePageHeader extends StatefulWidget {
  HomePageHeader({super.key, required this.title});

  String title = '';

  @override
  State<HomePageHeader> createState() => _HomePageHeaderState();
}

class _HomePageHeaderState extends State<HomePageHeader> {
  @override
  Widget build(BuildContext context) {
    return BuildHeader();
  }

  Widget BuildHeader() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                child: Text(
                  widget.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Spacer(),
              SearchButton(),
              AddButton(),
              CartButton(),
              ChatButton(),
            ],
          ),
        ],
      ),
    );
  }
}
