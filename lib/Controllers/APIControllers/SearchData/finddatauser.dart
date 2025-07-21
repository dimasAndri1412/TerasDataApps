import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:terasdata_apps/Controllers/controllerskeys.dart';

class Finddatauser{

  String? userName;
  var userNamesValues;

  Future<String> findUserNamesDataUsers() async {
    String userNamesInput = companyNamesResgitrationCompanyController.text;

    try {
      var findURL = Uri.parse("http://192.168.100.160:5000/findDataUsers");
      var response = await http.post(
        findURL,
        headers: {
          "Content-Type": "application/json"
        },
        body: jsonEncode({
          'USERNAMES': userNamesInput
        }),
      );

      if (response.statusCode == 200) {
        userNamesValues = jsonDecode(response.body);

        if (userNamesValues.isNotEmpty) {
          String userNamesPrint = userNamesValues[0]['USERNAMES'];
          return userNamesPrint;
        } else {
          return "Usernames Not Found";
        }

      } else {
        return "Server Error: ${response.statusCode}";
      }

    } catch (errors) {
      return "Could not find username in data users";
    }
  }
}

