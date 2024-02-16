import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  String btnText;
  Color? btnColor;
  VoidCallback onPressed;
  double? height;
  double? width;
  double? fontSize;

  CustomButton(
      {required this.btnText,
      required this.onPressed,
      this.btnColor,
      this.height,
      this.fontSize,
      this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: btnColor,
        ),
        child: Center(
          child: CustomText(
            text: btnText,
            color: Colors.white,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
