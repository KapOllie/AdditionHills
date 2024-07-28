import 'package:flutter/cupertino.dart';
import 'package:flutter_addition_hills/utils/exports.dart';

final _formKey = GlobalKey<FormState>();

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _myController = TextEditingController();
  final TextEditingController _birthdayController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _lastNameController.dispose();
    _firstNameController.dispose();
    _myController.dispose();
    _birthdayController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _showDatePicker() {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        title: const Text('Select your birthday'),
        actions: <Widget>[
          SizedBox(
            height: 200,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (DateTime newDateTime) {
                setState(() {
                  _birthdayController.text = newDateTime
                      .toLocal()
                      .toString()
                      .split(' ')[0]; // Format as YYYY-MM-DD
                });
              },
            ),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

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
                          text: 'Sign in',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xff0a0a0a), fontSize: 14),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, '/loginPage');
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
                height: 600,
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        WithoutIconTextfield(
                          hintText: 'Last Name',
                          labelText: 'Last Name',
                          controller: _lastNameController,
                          validator: (val) {
                            if (val != null && !val.isValidName) {
                              return "Enter a valid last name";
                            }
                            return null;
                          },
                        ),
                        WithoutIconTextfield(
                          hintText: 'First Name',
                          labelText: 'First Name',
                          controller: _firstNameController,
                          validator: (val) {
                            if (val != null && !val.isValidName) {
                              return "Enter a valid first name";
                            }
                            return null;
                          },
                        ),
                        WithoutIconTextfield(
                          hintText: 'Email',
                          labelText: 'Email',
                          controller: _emailController,
                          validator: (val) {
                            if (val != null && !val.isValidEmail) {
                              return "Enter a valid email";
                            }
                            return null;
                          },
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 4),
                          child: IntlPhoneField(
                            decoration: const InputDecoration(
                              labelText: 'Phone Number',
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff0a0a0a), width: 1.5)),
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 10),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff0a0a0a), width: 1)),
                            ),
                            initialCountryCode: 'PH',
                            onChanged: (phone) {
                              debugPrint(phone.completeNumber);
                              debugPrint(phone.toString());
                            },
                          ),
                        ),
                        WithoutIconTextfield(
                          hintText: 'Barangay/City/Province',
                          labelText: 'Address',
                          controller: _addressController,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 4),
                          child: TextFormField(
                            controller: _birthdayController,
                            readOnly: true,
                            decoration: InputDecoration(
                                hintText: 'Birthday',
                                labelText: 'Birthday',
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff0a0a0a), width: 1.5)),
                                border: const OutlineInputBorder(),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 10),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff0a0a0a), width: 1)),
                                suffixIcon: InkWell(
                                  onTap: _showDatePicker,
                                  child:
                                      const Icon(Icons.calendar_month_rounded),
                                )),
                          ),
                        ),
                        PasswordTextfield(
                          controller: _passwordController,
                        ),
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
                                            decoration:
                                                TextDecoration.underline))),
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
                                            decoration:
                                                TextDecoration.underline)))
                              ])),
                        ),
                        InkWell(
                          onTap: () {
                            _formKey.currentState!.validate();
                            // Make sure _fname is not null
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 4),
                            height: 40,
                            alignment: Alignment.center,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Color(0xff0a0a0a),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Text(
                              'Sign up',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w500)),
                            ),
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
