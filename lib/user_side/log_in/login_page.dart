import 'package:flutter_addition_hills/utils/exports.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void onPressed() => {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Padding(
        padding: const EdgeInsets.all(44.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 80),
              child: Text(
                'Logo Name',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 32,
                        color: Color(0xff0a0a0a),
                        fontWeight: FontWeight.w600)),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 100),
              child: const Text(
                'Log in',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.email_rounded,
                        color: Color(0xFF0A0A0A),
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.visibility_off_rounded),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.key_rounded,
                        color: Color(0xFF0A0A0A),
                      ),
                    )),
              ),
            ),
            Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: const Text('Forgot Password?')),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff0a0a0a),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                    onPressed: onPressed,
                    child: const Text(
                      'Log in',
                      style: TextStyle(color: Color(0xffFAFAFA)),
                    )),
              ),
            ),
            Text.rich(TextSpan(
              children: [
                const TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(
                      color: Color(0xff0a0a0a),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    )),
                TextSpan(
                    text: 'Sign up',
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color(0xff0a0a0a),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, '/signupPage');
                      }),
              ],
            ))
          ], // End of children
        ),
      ),
    );
  }
}
