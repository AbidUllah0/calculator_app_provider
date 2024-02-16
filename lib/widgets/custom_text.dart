import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;
  TextAlign? textAlign;
  TextOverflow? overflow;

  CustomText({
    required this.text,
    this.fontWeight,
    this.color,
    this.fontSize,
    this.textAlign,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      overflow: overflow,
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
