import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color colorTxt;
  const CustomText({super.key, required this.text, required TextStyle style, required this.colorTxt});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: colorTxt),);
  }
}
