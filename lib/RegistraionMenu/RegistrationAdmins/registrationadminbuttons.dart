import 'package:flutter/material.dart';

class Registrationadminbuttons extends StatefulWidget {
  const Registrationadminbuttons({super.key});

  @override
  State<Registrationadminbuttons> createState() => _RegistrationadminbuttonsState();
}

class _RegistrationadminbuttonsState extends State<Registrationadminbuttons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 50,
            width: 300,
            margin: const EdgeInsets.symmetric(
                horizontal: 50
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0,8),
                  blurRadius: 50,
                  color: Colors.black87.withOpacity(0.23),
                )
              ],
              color: const Color.fromARGB(255, 24, 92, 239),
            ),
            child: const Center(
              child: Text(
                "CONTINUE",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
