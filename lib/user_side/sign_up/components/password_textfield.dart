import 'package:flutter/material.dart';

class PasswordTextfield extends StatefulWidget {
  const PasswordTextfield({super.key, required this.controller});

  final TextEditingController controller;
  @override
  State<PasswordTextfield> createState() => _PasswordTextfieldState();
}

class _PasswordTextfieldState extends State<PasswordTextfield> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText; // Toggle the state of obscuring text
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Password',
          labelText: 'Password',
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff0a0a0a), width: 1.5),
          ),
          border: const OutlineInputBorder(),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff0a0a0a), width: 1),
          ),
          suffixIcon: GestureDetector(
            onTap:
                _togglePasswordVisibility, // Call the method to toggle visibility
            child: Icon(
              _obscureText
                  ? Icons.visibility_off
                  : Icons.visibility, // Switch icons based on state
            ),
          ),
        ),
        obscureText: _obscureText,
        validator: (value) =>
            (value == null || value.length < 6) ? "Password too short." : null,
      ),
    );
  }
}
