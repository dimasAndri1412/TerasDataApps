import 'package:flutter/material.dart';

class Formterasdata extends StatefulWidget {
  const Formterasdata({super.key});

  @override
  State<Formterasdata> createState() => _FormterasdataState();
}

class _FormterasdataState extends State<Formterasdata> {

  bool passHadding = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Form(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black87
                      )
                    )
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "User Names",
                      hintText: "Pleace Insert your User Names",
                      hintStyle: TextStyle(
                        color: Colors.black26
                      ),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.person
                      )
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'User Name can not empty!';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.black87
                          )
                      )
                  ),
                  child: TextFormField(
                    obscureText: passHadding,
                    onChanged: (value) {
                    },
                    decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Pleace Insert your Password",
                        hintStyle: const TextStyle(
                            color: Colors.black26
                        ),
                        border: InputBorder.none,
                        prefixIcon: const Icon(
                            Icons.lock
                        ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passHadding = !passHadding;
                            });
                          },
                          icon: Icon(
                              passHadding ? Icons.visibility_off :
                                  Icons.visibility
                          ),
                      )
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password Can not Empty!';
                      }
                      return null;
                    },
                  ),
                )
              ],
            )
        )
      ],
    );
  }
}
