import 'dart:convert';
import 'package:http/http.dart' as http;

class Pointoprations {
  static Future fetchdata(String url, String token) async {
    var response = await http.get(Uri.parse(url), headers: {
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print("doooonnnneee");
      return data;
    } else {
      var errorcode = response.statusCode.toString();
      print("Status code : $errorcode");
      throw Exception('Failed to load data');
    }
  }

  static Future fetchpoint(String apiurl, String token, int id) async {
    String url = apiurl + id.toString();
    var response = await http.get(Uri.parse(url), headers: {
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print("doooonnnneee");
      return data;
    } else {
      var errorcode = response.statusCode.toString();
      print("Status code : $errorcode");
      throw Exception('Failed to load data');
    }
  }

  static void updatepoint(
      {String? token,
      String? url,
      String? name,
      String? adress,
      int? currentbalance,
      String? country,
      int? id}) async {
    String data = "";
    final Map<String, dynamic> postData = {
      'name': '$name',
      'country': '$country',
      'current_balance': '$currentbalance',
      'address': '$adress',
    };
    postData.forEach(
      (key, value) {
        data += key + "=" + value + "&";
      },
    );
    var putresponse = await http.put(
      Uri.parse(url! + "$id ?" + data),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
    if (putresponse.statusCode == 200) {
      print('Data updated successfully');
    } else {
      throw Exception("Error to update data");
    }
  }

  static void createpoint(
      {String? apiurl,
      String? name,
      String? adress,
      int? currentbalance,
      String? country,
      int? managerid,
      String? token}) async {
    try {
      String data = "";
      final Map<String, dynamic> postData = {
        'name': '$name',
        'country': '$country',
        'current_balance': '$currentbalance',
        'address': '$adress',
        'manager_id': '$managerid',
      };
      postData.forEach(
        (key, value) {
          data += key + "=" + value + "&";
        },
      );
      var response = await http.post(
        Uri.parse(apiurl! + data),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 201) {
        print('Data posted successfully');
      } else {
        throw Exception("Error to pots data");
      }
    } catch (e) {
      print("errrorrr $e");
    }
  }

  static void deletepoint({int? id, String? url, String? token}) async {
    var response = await http.delete(Uri.parse(url! + "$id"), headers: {
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 204) {
      print('Data deleted successfully');
    } else {
      print('Error in delete Data');
    }
  }
}
