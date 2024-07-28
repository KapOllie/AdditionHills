import 'package:flutter/material.dart';
import 'package:flutter_addition_hills/pages/admin_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
                child: Text(
              'Admin Panel',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w400)),
            )),
            DrawerListTile(
              title: "Dashboard",
              press: () {
                //context.mainScreenProvider.navigateToScreen('Dashboard');
              },
              icon: const Icon(Icons.dashboard_rounded),
            ),
            DrawerListTile(
              title: "Users",
              press: () {},
              icon: const Icon(Icons.people_alt_rounded),
            ),
            DrawerListTile(
              title: "Documents",
              press: () {},
              icon: const Icon(Icons.edit_document),
            ),
            DrawerListTile(
              title: "Requests",
              press: () {},
              icon: const Icon(Icons.folder),
            ),
            DrawerListTile(
              title: "Chat Logs",
              press: () {},
              icon: const Icon(Icons.message_rounded),
            ),
            DrawerListTile(
                title: "Log out",
                press: () {},
                icon: const Icon(Icons.logout_rounded))
          ],
        ),
      ),
    );
  }
}
