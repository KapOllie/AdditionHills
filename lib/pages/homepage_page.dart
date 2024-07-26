import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0a0a0a),
      appBar: AppBar(
        toolbarHeight: 100,
        foregroundColor: const Color(0xFFFFFFFF),
        backgroundColor: const Color(0xFF0a0a0a),
        title: const Text(
          'BarangayGo',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
            child: Icon(Icons.notifications),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
            child: Icon(Icons.person_2_rounded),
          )
        ],
      ),
      drawer: const Drawer(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //  PasswordField(hintText: Text),
          ],
        ),
      ),
    );
  }
}
