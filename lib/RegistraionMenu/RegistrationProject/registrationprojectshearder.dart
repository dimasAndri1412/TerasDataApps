import 'package:flutter/material.dart';

class Registrationprojectshearder extends StatefulWidget {
  const Registrationprojectshearder({super.key});

  @override
  State<Registrationprojectshearder> createState() => _RegistrationprojectshearderState();
}

class _RegistrationprojectshearderState extends State<Registrationprojectshearder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 250,
            child: Image.asset('assets/images_terasdata/Projects.png'),
          )
        ],
      ),
    );
  }
}
