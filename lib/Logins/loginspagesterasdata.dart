import 'package:flutter/material.dart';
import 'package:terasdata_apps/Logins/buttonterasdata.dart';
import 'package:get/get.dart';
import 'package:terasdata_apps/RegistraionMenu/RegistrationCompany/registrationpages.dart';

class Loginspagesterasdata extends StatelessWidget {
  const Loginspagesterasdata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Gambar Header
            Image.asset(
              'assets/images_terasdata/backgroudapps.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const SizedBox(height: 10),
            // Teks Versi
            const Text(
              "Version 1.0.0",
              style: TextStyle(
                color: Colors.black26,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 10),
            // Baris untuk Button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Flexible(child: Buttonterasdata()),
                const SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    Get.offAll(() => const Registrationpages());
                  },
                  backgroundColor: Colors.lightBlue,
                  child: const Icon(
                    Icons.add_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
