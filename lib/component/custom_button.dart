import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed; // Tambahkan ini
  final Color bg;
  final double width;
  final double height;
  final Color clrText;
  final double radius;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed, // Tambahkan ke constructor
    required this.bg,
    required this.width,
    required this.height,
    required this.clrText, required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, height),
        backgroundColor: bg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius)
        )
      ),
        onPressed: onPressed,
        child: Text(text, style: TextStyle(color: clrText),));
  }
}
