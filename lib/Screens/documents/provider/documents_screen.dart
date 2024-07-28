import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentsScreen extends StatelessWidget {
  const DocumentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            height: 40,
            width: double.infinity,
            // color: Colors.brown.shade300,
            child: Text(
              'Documents',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Color(0xff0a0a0a),
                      fontSize: 24,
                      fontWeight: FontWeight.w600)),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const Spacer(),
              Container(
                  alignment: Alignment.center,
                  width: 160,
                  height: 30,
                  decoration: const BoxDecoration(
                      color: Color(0xff2D7DBC),
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: Text('Add New Document',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.white, fontSize: 12)))),
            ],
          ),
          Column(
            children: [
              DataTable(
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff0a0a0a))),
                  columns: const [
                    DataColumn(label: Text('Title')),
                    DataColumn(label: Text('Last Modified'))
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text('Natasha')),
                      DataCell(Text('Amalia'))
                    ])
                  ])
            ],
          )
        ],
      ),
    ));
  }
}
