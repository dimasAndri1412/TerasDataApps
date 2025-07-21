import 'package:flutter/material.dart';
import 'package:terasdata_apps/RegistraionMenu/RegistrationProject/registrationprojectsform.dart';

class Registrationprojectswrapper extends StatefulWidget {
  const Registrationprojectswrapper({super.key});

  @override
  State<Registrationprojectswrapper> createState() => _RegistrationprojectswrapperState();
}

class _RegistrationprojectswrapperState extends State<Registrationprojectswrapper> {
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
              child: Registrationprojectsform(),
            )
        ),
      ],
    );
  }
}
