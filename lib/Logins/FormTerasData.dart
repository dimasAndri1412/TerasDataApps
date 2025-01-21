import 'package:flutter/material.dart';

class formTerasData extends StatefulWidget {
  const formTerasData({super.key});

  @override
  State<formTerasData> createState() => _formTerasDataState();
}

class _formTerasDataState extends State<formTerasData> {

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
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black87
                      )
                    )
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
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
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
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
                        hintStyle: TextStyle(
                            color: Colors.black26
                        ),
                        border: InputBorder.none,
                        prefixIcon: Icon(
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
