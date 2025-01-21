import 'package:flutter/material.dart';
import 'package:terasdata_apps/Logins/ButtonTerasData.dart';

class loginPagesTerasData extends StatelessWidget {
  const loginPagesTerasData({super.key});

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
            SizedBox(height: 10),
            // Teks Versi
            Text(
              "Version 1.0.0",
              style: TextStyle(
                color: Colors.black26,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 10),
            // Baris untuk Button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(child: buttonTerasData()),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {

                  },
                  child: Icon(
                    Icons.add_outlined,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.lightGreen,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
