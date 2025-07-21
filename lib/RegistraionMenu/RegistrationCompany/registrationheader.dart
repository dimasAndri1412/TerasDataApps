import 'package:flutter/material.dart';

class Registrationheader extends StatelessWidget {
  const Registrationheader({super.key});

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
               child: Image.asset('assets/images_terasdata/Company.png'),
           )
        ],
      ),
    );
  }
}
