// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_addition_hills/components/login_button.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'BarangayGo',
                style: TextStyle(
                    color: Color(0xFF0A0A0A),
                    fontSize: 36,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginButton(buttonText: 'Log in'),
                  LoginButton(
                    buttonText: 'Sign up',
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
