import 'package:flutter_addition_hills/utils/exports.dart';

class DocumentRequestPage extends StatefulWidget {
  const DocumentRequestPage({super.key});

  @override
  State<DocumentRequestPage> createState() => _DocumentRequestPageState();
}

class _DocumentRequestPageState extends State<DocumentRequestPage> {
  final _searchController = TextEditingController();

  void openSearch() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text(_searchController.text),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff030712),
        appBar: CustomAppbar(
            appBarTitle: Text('LOGO NAME',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Color.fromARGB(255, 99, 87, 87),
                        fontSize: 20,
                        fontWeight: FontWeight.w400))),
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
        body: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.bottomCenter,
              height: 800,
              decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 36, 28, 16),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Document Request',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color(0xff0a0a0a),
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    ),
                    Text(
                      'What kind of document you are looking for?',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color(0xff0a0a0a),
                              fontSize: 12,
                              fontWeight: FontWeight.normal)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: TextFormField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          isDense: true,
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff0a0a0a), width: 1.5)),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff0a0a0a), width: 1)),
                          hintText: 'Enter the name of the document',
                          hintStyle: const TextStyle(fontSize: 12),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.search_rounded),
                            onPressed: openSearch,
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      height: 8,
                      thickness: 1,
                      color: Color(0xffC9C9C9),
                    ),
                    ListView(
                      children: [
                        SizedBox(
                          height: 50,
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade600)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
