import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:terasdata_apps/Controllers/controllerskeys.dart';

class Insertdatacommpanys{

  String? companyName;
  var companyValue;

  Future<String> insertCompanyControllers() async {

    String companyInputs = companyNamesResgitrationCompanyController.text;

    try {

      var findUrl = Uri.parse("http://192.168.1.6:5000/insertDataCompany");
      var response = await http.post(
        findUrl,
        headers: {
          "Content-Type": "application/json"
        },
        body: jsonEncode({
              "COMPANY_NAME": companyInputs
        }),
      );

      if (response.statusCode == 201) {
        return "Commpany successfully insert";
      } else {
        return "Error: ${response.body}";
      }

    } catch(errs) {
      return "terjadi kesalahan : $errs";
    }

  }

  saveCompanyControllers() async {
    final resp = await http.post(
      Uri.parse("http://192.168.1.6:5000/insertDataCompany"),
      headers: {
        "Content-Type": "application/json"
      },
      body: jsonEncode({
        "COMPANY_NAME": companyNamesResgitrationCompanyController.text
      }),
    );
    print("response: ${resp.body}");
    if (resp.statusCode == 201){
      return true;
    }
    return false;
  }

}