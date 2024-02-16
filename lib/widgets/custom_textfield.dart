import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hintText;
  TextEditingController controller;
  void Function(String)? onChanged;
  CustomTextField(
      {required this.hintText, required this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      keyboardType: TextInputType.number,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(),
      ),
    );
  }
}
