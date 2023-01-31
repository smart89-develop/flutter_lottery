import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({
    Key? key,
    required this.text,
    this.color = const Color.fromRGBO(24, 39, 58, 0.94),
    required this.textSize,
    this.fontWeight = FontWeight.w400,
    this.maxLines = 10,
  }) : super(key: key);
  final String text;
  Color color;
  final double textSize;
  FontWeight fontWeight;
  // bool bigSize;
  int maxLines = 10;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: color,
          fontSize: textSize,
          fontWeight: fontWeight),
    );
  }
}

class PrizeTextWidget extends StatelessWidget {
  PrizeTextWidget({
    Key? key,
    required this.text,
    this.color = const Color.fromRGBO(24, 39, 58, 0.94),
    required this.textSize,
    this.fontWeight = FontWeight.w600,
    this.maxLines = 10,
    this.red = false,
    this.textAlign = TextAlign.center,
  }) : super(key: key);
  final String text;
  Color color;
  final double textSize;
  FontWeight fontWeight;
  bool red;
  TextAlign textAlign;
  // bool bigSize;
  int maxLines = 10;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        maxLines: maxLines,
        style: TextStyle(
            overflow: TextOverflow.ellipsis,
            color: red ? Color(0xffE43035) : color,
            fontSize: textSize,
            fontWeight: fontWeight),
        textAlign: textAlign,
      ),
    );
  }
}
