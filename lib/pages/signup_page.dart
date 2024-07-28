import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_addition_hills/user_side/sign_up/components/password_textfield.dart';
import 'package:flutter_addition_hills/user_side/sign_up/components/without_icon_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

void onPressed() {
  debugPrint('Calendar');
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 40, 24, 24),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 80,
                width: double.infinity,
                // color: Colors.amberAccent,
                child: Text(
                  textAlign: TextAlign.center,
                  'Logo Name',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    color: Color(0xff0a0a0a),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  )),
                ),
              ),
              const SizedBox(height: 56),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                // color: Colors.amber.shade200,
                height: 100,
                width: double.infinity,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Sign up',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 32,
                                color: Color(0xff0a0a0a),
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: 'Already have an account? ',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xff0a0a0a), fontSize: 14),
                              fontWeight: FontWeight.normal),
                        ),
                        TextSpan(
                          text: 'Sign in?',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xff0a0a0a), fontSize: 14),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Navigate to Sign in Page
                            },
                        ),
                      ])),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                // color: Colors.amberAccent,
                height: 600,
                child: Form(
                    child: Column(
                  children: [
                    const WithoutIconTextfield(
                      hintText: 'Last Name',
                      labelText: 'Last Name',
                    ),
                    const WithoutIconTextfield(
                      hintText: 'First Name',
                      labelText: 'First Name',
                    ),
                    const WithoutIconTextfield(
                      hintText: 'Email',
                      labelText: 'Email',
                    ),
                    const WithoutIconTextfield(
                      hintText: 'Phone Number',
                      labelText: 'Phone Number',
                    ),
                    const WithoutIconTextfield(
                      hintText: 'Barangay/City/Province',
                      labelText: 'Address',
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Birthday',
                            labelText: 'Birthday',
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff0a0a0a), width: 1.5)),
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 4, vertical: 10),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff0a0a0a), width: 1)),
                            suffixIcon: InkWell(
                              child: IconButton(
                                  onPressed: onPressed,
                                  icon: Icon(Icons.calendar_month_rounded)),
                            )),
                      ),
                    ),
                    const PasswordTextfield(),
                    Container(
                      margin: const EdgeInsets.only(top: 16, bottom: 4),
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'By signing up, you agree to our ',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  color: Color(0xff0a0a0a),
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                ))),
                            TextSpan(
                                text: 'Terms of Service ',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color(0xff0a0a0a),
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline))),
                            TextSpan(
                                text: '\nand that you have read our ',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  color: Color(0xff0a0a0a),
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                ))),
                            TextSpan(
                                text: 'Privacy Policy. ',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color(0xff0a0a0a),
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline)))
                          ])),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      height: 40,
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Color(0xff0a0a0a),
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Text(
                        'Sign up',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                color: Color(0xfffffffff),
                                fontWeight: FontWeight.w500)),
                      ),
                    )
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
