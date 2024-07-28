import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [Text('Dashboard')],
          )
        ],
      ),
    ));
  }
}
