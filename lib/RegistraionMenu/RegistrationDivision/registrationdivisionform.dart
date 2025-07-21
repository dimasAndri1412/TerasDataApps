import 'package:flutter/material.dart';

class Registrationdivisionform extends StatefulWidget {
  const Registrationdivisionform({super.key});

  @override
  State<Registrationdivisionform> createState() => _RegistrationdivisionformState();
}

class _RegistrationdivisionformState extends State<Registrationdivisionform> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Form(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Divisions Names",
                    hintText: "Please Insert Your Divisions",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.location_city),
                  ),
                  validator: (values) {
                    if (values == null || values.isEmpty) {
                      return "Divisions Name Can Not Be Empty!!";
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
