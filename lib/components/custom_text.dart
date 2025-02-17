import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    this.textOverflow,
    this.color
  });

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final TextOverflow? textOverflow;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color
      )
    );
  }
}