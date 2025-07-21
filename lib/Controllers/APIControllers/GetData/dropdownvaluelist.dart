import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:terasdata_apps/RegistraionMenu/RegistrationAdmins/Material/getdropdownpositionvalues.dart';

class Dropdownvaluelist {

  Future<List<dropDownPositionValueList>?> getDropDownPositionValues() async {

    var valuePosition = await http.get(
        Uri.parse(
            "http://192.168.100.160:5000/getPositions"
        )
    );

    var respDropDownPositionValue = jsonDecode(
      valuePosition.body
    );
    List<dropDownPositionValueList> dropDownPositionListing = [];
    for (var p in respDropDownPositionValue) {
      dropDownPositionValueList listingPosition = dropDownPositionValueList(
        p["POSITION_NAME"]
      );
      dropDownPositionListing.add(listingPosition);
    }
    return dropDownPositionListing;
  }

}