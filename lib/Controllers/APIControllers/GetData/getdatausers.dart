import 'dart:convert';
import 'package:http/http.dart' as http;


class Finddaatauser{

  Future<List<Map<String, dynamic>>> getDataUsers() async {

    const String apiUrl = "http://192.168.100.160:5000/getDataUsers";

    try {

      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        return List<Map<String, dynamic>>.from(data);
      } else {
        throw Exception("Gagal mengambil data, status: ${response.statusCode}");
      }

    }catch (errs) {
      throw Exception("terjadi kesalahan : $errs");
    }
  }
}