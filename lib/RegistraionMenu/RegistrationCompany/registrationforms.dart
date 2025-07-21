import 'package:flutter/material.dart';
import 'package:terasdata_apps/Controllers/controllerskeys.dart';

class Registrationform extends StatefulWidget {
  const Registrationform({super.key});

  @override
  State<Registrationform> createState() => _RegistrationformState();
}

class _RegistrationformState extends State<Registrationform> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Form(
          key: registrationCompanysKeys,
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                ),
                child: TextFormField(
                  controller: companyNamesResgitrationCompanyController,
                  decoration: const InputDecoration(
                    labelText: "Company Name",
                    hintText: "Please Insert Your Company Name",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.location_city),
                  ),
                  validator: (values) {
                    if (values == null || values.isEmpty) {
                      return "Company Name Can Not Be Empty!!";
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

