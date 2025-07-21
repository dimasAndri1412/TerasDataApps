import 'package:flutter/material.dart';
import 'package:terasdata_apps/RegistraionMenu/RegistrationDivision/registrationdivisionform.dart';

class Registrationdivisionswrapper extends StatefulWidget {
  const Registrationdivisionswrapper({super.key});

  @override
  State<Registrationdivisionswrapper> createState() => _RegistrationdivisionswrapperState();
}

class _RegistrationdivisionswrapperState extends State<Registrationdivisionswrapper> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60)
            ),
            child:const SingleChildScrollView(
              child: Registrationdivisionform(),
            )
        ),
      ],
    );
  }
}
