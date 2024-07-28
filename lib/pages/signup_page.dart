import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  DateTime? _birthDate;
  final TextEditingController _controller = TextEditingController();
  final _birthDayText = TextEditingController();
  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2025))
        .then((value) {
      setState(() {
        _birthDate = value!;
        _birthDayText.text = DateFormat('MM/dd/yy').format(_birthDate!);
      });
    });
  }

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
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
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
                                  fontSize: 28,
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
                  height: 44,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Full Name',
                        contentPadding: EdgeInsets.all(8),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff0a0a0a), width: 2)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xff0a0a0a), width: 1.5))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  height: 44,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Email',
                        contentPadding: EdgeInsets.all(8),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff0a0a0a), width: 2)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xff0a0a0a), width: 1.5))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  height: 44,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Address',
                        contentPadding: EdgeInsets.all(8),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff0a0a0a), width: 2)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xff0a0a0a), width: 1.5))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  height: 44,
                  child: TextFormField(
                      readOnly: true,
                      decoration: InputDecoration(
                        labelText: 'Birthday',
                        contentPadding: const EdgeInsets.all(8),
                        enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff0a0a0a), width: 2)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff0a0a0a), width: 2)),
                        suffixIcon: IconButton(
                            icon: const Icon(Icons.calendar_month_rounded),
                            onPressed: () {
                              _showDatePicker();
                            }),
                      ),
                      controller: _birthDayText),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
