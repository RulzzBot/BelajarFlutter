import 'package:flutter/material.dart';

class CustomImg extends StatelessWidget {
  final String path;
  final double width;
  const CustomImg({super.key, required this.path, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset(path, width: width)
    );
  }
}
