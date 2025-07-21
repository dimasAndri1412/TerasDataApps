import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:terasdata_apps/Controllers/controllerskeys.dart';

class Insertdatauseradmins {

  String? fullnames,username,birthdate,address,roles,phones,emails,positionmames,divisionnames,companynames,projectnames;
  var insertDataUserAdminsValue;

  Future<String> insertDataUsersControllers() async {

    String fullnamesInputs = fullnamesRegistrationAdminController.text;
    String usernamesInputs = usernamesRegistrationAdminController.text;
    String birthdateInputs = birthDateRegistrationAdminController.text;
    String addressInputs = addressRegistrationAdminController.text;
    String rolesInputs = rolesRegistrationAdminController.text;
    String phoneInputs = phoneNumbersRegistrationAdminController.text;
    String emailInputs = emailAddressRegistrationAdminController.text;
    
    try{
      
      var findUrls = Uri.parse("http://192.168.100.160:5000/insertDataUser");
      var response = await http.post(
        findUrls,
        headers: {
          "Content-Type": "application/json"
        },
        body: jsonEncode({
          "FULLNAMES" : fullnamesInputs,
          "USERNAMES" : usernamesInputs,
          "BIRTHDATE" : birthdateInputs,
          "ADDRESS_NAME" : addressInputs,
          "ROLES" : rolesInputs,
          "PHONE_NUMBER" : phoneInputs,
          "EMAIL_ADDRESS" : emailInputs,

        })
      );

      if (response.statusCode == 201) {
        return "DATA USERS SUCCESFULLY INSERT";
      } else {
        return "Error : ${response.body}";
      }
      
    } catch(errors) {
      return "terjadi kesalahan pada : $errors";
    }

  }

}