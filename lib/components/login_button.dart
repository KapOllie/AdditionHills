import 'package:flutter/material.dart';
import 'package:flutter_addition_hills/pages/homepage_page.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, this.buttonText});
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => const HomePage(),
      child: Container(
        margin: const EdgeInsets.fromLTRB(14, 0, 14, 0),
        decoration: const BoxDecoration(
            color: Color(0xFF0A0A0A),
            borderRadius: BorderRadius.all(Radius.circular(4))),
        padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
        child: Text(buttonText!,
            style: const TextStyle(
              color: Color(0xFFFFFFFF),
            )),
      ),
    );
  }
}
