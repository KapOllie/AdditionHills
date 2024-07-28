import 'package:flutter/material.dart';

class WithoutIconTextfield extends StatelessWidget {
  const WithoutIconTextfield({
    super.key,
    required this.hintText,
    required this.labelText,
    this.initialValue,
  });
  final String hintText;
  final String labelText;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: TextFormField(
        initialValue: initialValue,
        decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff0a0a0a), width: 1.5)),
            border: const OutlineInputBorder(),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff0a0a0a), width: 1))),
      ),
    );
  }
}
