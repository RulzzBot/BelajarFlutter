import 'package:flutter/material.dart';

class CustomCheck extends StatelessWidget {
  final bool value;
  final String text;
  final ValueChanged<bool?> onChanged;
  const CustomCheck({super.key, required this.value, required this.onChanged, required this.text,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
        ),
        Text(text)
      ],
    );

  }
}
