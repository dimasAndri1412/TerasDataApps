import 'package:flutter/material.dart';
import 'package:terasdata_apps/RegistraionMenu/RegistrationAdmins/registrationadminsform.dart';

class Registrationadminwrappers extends StatefulWidget {
  const Registrationadminwrappers({super.key});

  @override
  State<Registrationadminwrappers> createState() => _RegistrationadminwrappersState();
}

class _RegistrationadminwrappersState extends State<Registrationadminwrappers> {
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
              child: Registrationadminsform(),
            )
        ),
      ],
    );;
  }
}
