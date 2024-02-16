import 'package:flutter/material.dart';

import 'custom_text.dart';

class OperatorButton extends StatelessWidget {
  String btnText;
  Color? btnColor;
  VoidCallback onPressed;

  OperatorButton(
      {required this.btnText, required this.onPressed, this.btnColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: btnColor,
        ),
        child: Center(
          child: CustomText(
            text: btnText,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    ;
  }
}
