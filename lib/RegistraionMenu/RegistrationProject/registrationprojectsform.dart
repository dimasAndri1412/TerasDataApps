import 'package:flutter/material.dart';

class Registrationprojectsform extends StatefulWidget {
  const Registrationprojectsform({super.key});

  @override
  State<Registrationprojectsform> createState() => _RegistrationprojectsformState();
}

class _RegistrationprojectsformState extends State<Registrationprojectsform> {
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
                    labelText: "Projects Name",
                    hintText: "Please Insert Your Projects",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.location_city),
                  ),
                  validator: (values) {
                    if (values == null || values.isEmpty) {
                      return "Project Name Can Not Be Empty!!";
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
