import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class AddNew extends StatefulWidget {
  const AddNew({super.key});

  @override
  State<AddNew> createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
  final _myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                        controller: _myController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        validator: (password) =>
                            (password == null || password.length < 8)
                                ? "Password must be 8 characters long"
                                : null),
                    ElevatedButton(
                        onPressed: () {
                          _formKey.currentState!.validate();
                        },
                        child: const Text('Submit'))
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
