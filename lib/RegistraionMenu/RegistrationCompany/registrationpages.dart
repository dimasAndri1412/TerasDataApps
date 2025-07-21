import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terasdata_apps/Logins/loginsPagesTerasData.dart';
import 'package:terasdata_apps/RegistraionMenu/RegistrationCompany/registrationbuttons.dart';
import 'package:terasdata_apps/RegistraionMenu/RegistrationCompany/registrationheader.dart';
import 'package:terasdata_apps/RegistraionMenu/RegistrationCompany/registrationwrapper.dart';

class Registrationpages extends StatefulWidget {
  const Registrationpages({super.key});

  @override
  State<Registrationpages> createState() => _RegistrationpagesState();
}

class _RegistrationpagesState extends State<Registrationpages> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'REGISTRATION COMPANY',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 29, 136, 229),
          leading: IconButton(
            onPressed: () {
              _showConfirmDialog(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height, // Membuat Container sesuai tinggi layar
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter, // Pastikan gradient mencakup bawah juga
              colors: [
                Color.fromARGB(255, 50, 105, 206),
                Color.fromARGB(255, 84, 149, 215),
                Color.fromARGB(255, 127, 205, 222),
                Color.fromARGB(255, 182, 232, 250),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 30),
                const Registrationheader(),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 8),
                          blurRadius: 50,
                          color: Colors.black87.withOpacity(0.23),
                        )
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Registrationwrapper(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Registrationbuttons(),
                const SizedBox(height: 30), // Tambahan spacing agar tidak terlalu rapat
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<Future<bool?>> _showConfirmDialog(BuildContext context) async {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          icon: const Icon(Icons.warning_amber, color: Colors.deepOrange),
          title: const Text(
            "Attentions!",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: const Text("ARE YOU SURE WANT TO EXIT"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text(
                "NO",
                style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.offAll(() => const Loginspagesterasdata());
              },
              child: const Text(
                "YES",
                style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        );
      },
    );
  }
}
