import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, this.hintText});
  final String? hintText;
  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool showPassword = false;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.visiblePassword,
      obscuringCharacter: '*',
      decoration: InputDecoration(
          hintText: widget.hintText!,
          border: const OutlineInputBorder(),
          prefixIcon: const Padding(
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.email_rounded,
              color: Color(0xFF0A0A0A),
            ),
          )),
    );
  }
}
