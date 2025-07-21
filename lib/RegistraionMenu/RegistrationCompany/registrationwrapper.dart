import 'package:flutter/material.dart';
import 'package:terasdata_apps/RegistraionMenu/RegistrationCompany/registrationforms.dart';


class Registrationwrapper extends StatefulWidget {
  const Registrationwrapper({super.key});

  @override
  State<Registrationwrapper> createState() => _RegistrationwrapperState();
}

class _RegistrationwrapperState extends State<Registrationwrapper> {
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
            child: Registrationform(),
          )
        ),
      ],
    );
  }
}
