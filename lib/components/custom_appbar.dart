import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = const Color(0xff030712);
  final Text appBarTitle;
  final AppBar appBar;
  final List<Widget> widgets;

  const CustomAppbar(
      {super.key,
      required this.appBarTitle,
      required this.appBar,
      required this.widgets});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: appBarTitle,
      backgroundColor: backgroundColor,
      actions: widgets,
      centerTitle: true,
      toolbarHeight: 100,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}
