import 'package:flutter_addition_hills/utils/exports.dart';

class UserManagement extends StatelessWidget {
  const UserManagement({super.key});

  final int totalUsers = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Text('Users ',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color(0xff0a0a0a),
                              fontSize: 20,
                              fontWeight: FontWeight.w600))),
                  Text.rich(
                    TextSpan(children: [TextSpan(text: '($totalUsers)')]),
                  ),
                  const Spacer(),
                  Expanded(
                      flex: 1,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search by Name, Email or Phone',
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            suffixIcon: InkWell(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(4))),
                                  child: const Icon(Icons.search_rounded),
                                ),
                              ),
                            )),
                      ))
                ],
              )),
          Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            height: 400,
            child: DataTable(columns: const [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Email'))
            ], rows: const [
              DataRow(
                  cells: [DataCell(Text('Natasha')), DataCell(Text('Amalia'))])
            ]),
          )
        ],
      ),
    ));
  }
}
