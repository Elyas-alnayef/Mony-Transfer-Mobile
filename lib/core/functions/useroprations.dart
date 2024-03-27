import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../data/model/user.dart';

class Useroprations {
  static Future fetchdata({String? url, String? token}) async {
    List<dynamic> users = [];
    var response = await http.get(Uri.parse(url!), headers: {
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      for (var i = 0; i < data["data"].length; i++) {
        users.add(User.FromJson(data["data"][i]));
      }
      print("doooonnnneee");

      print(users[3].archives);
      return users;
    } else {
      var errorcode = response.statusCode.toString();
      print("Status code : $errorcode");
      throw Exception('Failed to load data');
    }
  }

  static Future fetchuser({String? url, String? token, int? id}) async {
    String apiurl = url! + id.toString();
    var response = await http.get(Uri.parse(apiurl), headers: {
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      User user = User.FromJson(data["data"]);
      print("doooonnnneee");
      return user;
    } else {
      var errorcode = response.statusCode.toString();
      print("Status code : $errorcode");
      throw Exception('Failed to load data');
    }
  }

 
}
