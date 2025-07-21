import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:terasdata_apps/Controllers/APIControllers/GetData/dropdownvaluelist.dart';
import 'package:terasdata_apps/Controllers/controllerskeys.dart';
import 'package:terasdata_apps/RegistraionMenu/RegistrationAdmins/Material/getdropdownpositionvalues.dart';

class Registrationadminsform extends StatefulWidget {
  const Registrationadminsform({super.key});

  @override
  State<Registrationadminsform> createState() => _RegistrationadminsformState();
}

class _RegistrationadminsformState extends State<Registrationadminsform> {

  String? dropPositionValues;
  List<dropDownPositionValueList> positionListings = [];

  Future<void> getListPosition() async {
    final Dropdownvaluelist positionValues = Dropdownvaluelist();
    final fetchPosition = await positionValues.getDropDownPositionValues();
    if (fetchPosition != null) {
      setState(() {
        positionListings = fetchPosition;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getListPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Form(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  child: TextFormField(
                    controller: usernamesRegistrationAdminController,
                    decoration: const InputDecoration(
                      labelText: "UserNames",
                      hintText: "Please Insert your Username",
                      hintStyle: TextStyle(
                        color: Colors.black26
                      ),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.person
                      )
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username Can not Emtpy!";
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
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  child: TextFormField(

                    decoration: const InputDecoration(
                        labelText: "FullNames",
                        hintText: "Please Insert your Full Names",
                        hintStyle: TextStyle(
                            color: Colors.black26
                        ),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                            Icons.person
                        )
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username Can not Emtpy!";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black87))),
                  child: TextFormField(
                    controller: birthDateRegistrationAdminController,
                    decoration: const InputDecoration(
                        labelText: "BirthDate",
                        hintText: "Pleas Enter Your BirthDate",
                        hintStyle: TextStyle(color: Colors.black26),
                        border: InputBorder.none,
                        icon: Icon(Icons.calendar_today)),
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDates = await showDatePicker(
                          builder: (context, child) {
                            return Theme(
                              data: Theme.of(context).copyWith(
                                colorScheme: const ColorScheme.light(
                                    primary: Color.fromARGB(255, 11, 108, 15),
                                    onPrimary: Colors.white,
                                    onSurface: Colors.black),
                                textButtonTheme: TextButtonThemeData(
                                  style: TextButton.styleFrom(
                                      foregroundColor: const Color.fromARGB(
                                          255, 35, 183, 39)),
                                ),
                              ),
                              child: child!,
                            );
                          },
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2100));

                      if (pickedDates != null) {
                        String formatedDates =
                        DateFormat('yyyy-MM-dd').format(pickedDates);
                        setState(() {
                          birthDateRegistrationAdminController.text = formatedDates;
                        });
                      } else {}
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "BirtDate Can Not Empty!";
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
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Address",
                        hintText: "Please Insert your Address",
                        hintStyle: TextStyle(
                            color: Colors.black26
                        ),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                            Icons.person
                        )
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username Can not Emtpy!";
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
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Roles",
                        hintText: "Please Insert Your Roles",
                        hintStyle: TextStyle(
                            color: Colors.black26
                        ),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                            Icons.person
                        )
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username Can not Emtpy!";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: const BoxDecoration(
                        border:
                        Border(bottom: BorderSide(color: Colors.black87))),
                    child: IntlPhoneField(
                      controller: phoneNumbersRegistrationAdminController,
                      keyboardType: TextInputType.phone,
                      focusNode: FocusNode(),
                      dropdownTextStyle: const TextStyle(fontSize: 18),
                      style: const TextStyle(fontSize: 18),
                      decoration: const InputDecoration(
                        hintText: "Please insert you phone nummber",
                        hintStyle: TextStyle(color: Colors.black26),
                        border: InputBorder.none,
                      ),
                      initialCountryCode: 'ID',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                      validator: (value) {
                        if (value == null || value.completeNumber.isEmpty) {
                          return "Phone Nummber Can not empty";
                        }
                        return null;
                      },
                    )
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black87))),
                  child: TextFormField(
                    controller: emailAddressRegistrationAdminController,
                    decoration: const InputDecoration(
                        labelText: "Email",
                        hintText: "Please Insert Your Email",
                        hintStyle: TextStyle(color: Colors.black26),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.mail)),
                    validator: (value) {
                      //validator format email
                      bool inValidEmail = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!);

                      if (value.isEmpty) {
                        return 'Email Can not empty!';
                      } else if (!inValidEmail) {
                        emailAddressRegistrationAdminController.clear();
                        return "Incorrect Email format";
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
                              color: Colors.black87)
                      )
                  ),
                  child: DropdownButtonFormField<String>(
                    value: positionListings.map((position) => position.positionNames).contains(positionRegistraionAdminController.text)
                        ? positionRegistraionAdminController.text
                        : null,
                    items: [
                      DropdownMenuItem(
                        value: null,
                        child: Text(
                          "-- Select Your Positions --",
                          style: TextStyle(color: Colors.black26),
                        ),
                      ),
                      ...positionListings.map((position) {
                        return DropdownMenuItem(
                          value: position.positionNames,
                          child: Text(position.positionNames),
                        );
                      }).toList(),
                    ],
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.portrait_sharp,
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        dropPositionValues = value;
                        if (value != null && value.isNotEmpty) {
                          positionRegistraionAdminController.text = value;
                          print(positionRegistraionAdminController.text);
                        }else {
                          positionRegistraionAdminController.clear();
                        }
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please select a Position";
                      }
                      return null;
                    },
                  ),
                ),
              ],
            )
        )
      ],
    );
  }
}
