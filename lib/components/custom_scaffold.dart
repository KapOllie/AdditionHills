import 'package:flutter/material.dart';
import 'package:flutter_addition_hills/components/custom_appbar.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomScaffold extends StatefulWidget {
  const CustomScaffold({super.key});

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030712),
      appBar: CustomAppbar(
          appBarTitle: Text(
            'LOGO NAME',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 20,
                    fontWeight: FontWeight.w400)),
          ),
          appBar: AppBar(),
          widgets: const <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
              child: Icon(
                Icons.notifications,
                color: Color(0xffFFFFFF),
                size: 24,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
              child: Icon(
                Icons.circle,
                color: Color(0xffFFFFFF),
                size: 30,
              ),
            )
          ]),
      body: Column(
        children: [
          const Expanded(
              flex: 1,
              child: SizedBox(
                height: 10,
              )),
          Expanded(
              flex: 8,
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
              ))
        ],
      ),
    );
  }
}
