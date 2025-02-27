import 'package:flutter/material.dart';

class WithoutIconTextfield extends StatefulWidget {
  const WithoutIconTextfield(
      {super.key,
      required this.hintText,
      required this.labelText,
      this.controller,
      this.validator});

  final String? Function(String?)? validator;
  final String hintText;
  final String labelText;
  final TextEditingController? controller;

  @override
  State<WithoutIconTextfield> createState() => _WithoutIconTextfieldState();
}

class _WithoutIconTextfieldState extends State<WithoutIconTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
            hintText: widget.hintText,
            labelText: widget.labelText,
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff0a0a0a), width: 1.5)),
            border: const OutlineInputBorder(),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff0a0a0a), width: 1))),
        validator: widget.validator,
      ),
    );
  }
}
