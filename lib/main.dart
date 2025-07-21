import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:terasdata_apps/Logins/loginspagesterasdata.dart';

void main() => runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginspagesterasdata(),
    )
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginspagesterasdata(),
    );
  }
}