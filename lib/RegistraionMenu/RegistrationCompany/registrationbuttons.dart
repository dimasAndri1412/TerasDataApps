import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terasdata_apps/Controllers/APIControllers/InsertData/insertdatacommpanys.dart';
import 'package:terasdata_apps/Controllers/controldata.dart';
import 'package:terasdata_apps/Controllers/controllerskeys.dart';
import 'package:terasdata_apps/RegistraionMenu/RegistrationProject/registrationprojectspages.dart';

class Registrationbuttons extends StatefulWidget {
  const Registrationbuttons({super.key});

  @override
  State<Registrationbuttons> createState() => _RegistrationbuttonsState();
}

class _RegistrationbuttonsState extends State<Registrationbuttons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            if (registrationCompanysKeys.currentState!.validate()) {
                Insertdatacommpanys().saveCompanyControllers().then((value) {
                  print("debug: ${value}");
                  if (value == true) {
                    const snackBar = SnackBar(content: Text("Company Save Successfully!"));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    Controldata().companyNamesResgitrationCompanyControllerClearFunc();
                    Get.offAll(const Registrationprojectspages());
                  } else{
                    const snackBar = SnackBar(content: Text("Company Save Failure!"));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
            }
          },
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

