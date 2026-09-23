import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  // list variabel yang digunakan
  final String hint;
  final TextEditingController txtController;
  final double radius;
  final bool obscure;
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;
  const MyTextField({super.key, required this.hint, required this.txtController, required this.radius, required this.obscure, required this.keyboardType, required this.inputFormatters});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      obscureText: obscure,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        labelText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: Colors.black),
        )
      ),
    );
  }
}
