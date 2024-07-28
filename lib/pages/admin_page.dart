import 'package:flutter/material.dart';
import 'package:flutter_addition_hills/Screens/documents/provider/documents_screen.dart';
import 'package:flutter_addition_hills/components/side_menu.dart';
import 'package:flutter_addition_hills/dashboard/dashboard_screen.dart';
import 'package:flutter_addition_hills/user_management_screen/user_management.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Expanded(child: SideMenu()),
          Expanded(
            flex: 5,
            child: DocumentsScreen(),
          )
        ],
      )),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.press,
    required this.icon,
  });
  final dynamic icon;
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      horizontalTitleGap: 8,
      leading: icon,
      title: Text(title),
    );
  }
}
