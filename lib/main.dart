import 'package:flutter_addition_hills/utils/exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      routes: {
        '/signupPage': (context) => SignupPage(),
        '/loginPage': (context) => LoginPage()
      },
    );
  }
}
