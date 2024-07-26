import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: Text(
                      'Logo Name',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff0a0a0a))),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(children: <InlineSpan>[
                      TextSpan(
                          text: 'Sign up\n',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xff0a0a0a),
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700))),
                      TextSpan(
                          text: 'Already have an account? ',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xff0a0a0a),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500))),
                      TextSpan(
                          text: 'Log in',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff0a0a0a),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700))),
                    ]),
                  ),
                ),
                const SizedBox(height: 14),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  height: 40,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        hintText: 'Full Name',
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff0a0a0a), width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xff0a0a0a), width: 1.5))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  height: 40,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        hintText: 'Email',
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff0a0a0a), width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xff0a0a0a), width: 1.5))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  height: 40,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        hintText: 'Address',
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff0a0a0a), width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xff0a0a0a), width: 1.5))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
