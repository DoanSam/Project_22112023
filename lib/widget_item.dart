import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DotsColor extends StatefulWidget {
  DotsColor({super.key, required this.dotscolor});
  Color dotscolor;

  @override
  State<DotsColor> createState() => _DotsColorState();
}

class _DotsColorState extends State<DotsColor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: widget.dotscolor,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
