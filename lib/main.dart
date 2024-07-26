import 'package:flutter/material.dart';
import 'package:flutter_addition_hills/components/custom_scaffold.dart';
import 'package:flutter_addition_hills/pages/document_request_page.dart';
// import 'package:flutter_addition_hills/pages/homepage_page.dart';
// import 'package:flutter_addition_hills/pages/login_page.dart';
//import 'package:flutter_addition_hills/pages/signup_page.dart';
//import 'package:flutter_addition_hills/pages/homepage_page.dart';
//import 'package:flutter_addition_hills/pages/loading_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DocumentRequestPage(),
    );
  }
}
