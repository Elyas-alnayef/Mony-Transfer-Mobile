import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../data/model/archive.dart';

class Archiveopratons {
  static Future fetchdata({String? url, String? token}) async {
    List<dynamic> archives = [];
    var response = await http.get(Uri.parse(url!), headers: {
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      for (var i = 0; i < data["data"].length; i++) {
        archives.add(Archive.FromJason(data["data"][i]));
      }
      print("doooonnnneee");

      print(archives[0].total);
      return archives;
    } else {
      var errorcode = response.statusCode.toString();
      print("Status code : $errorcode");
      throw Exception('Failed to load data');
    }
  }

  static Future fetcharchive({String? url, String? token, int? id}) async {
    String apiurl = url! + id.toString();
    var response = await http.get(Uri.parse(apiurl), headers: {
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      Archive archive = Archive.FromJason(data["data"]);
      print("doooonnnneee");
      return archive;
    } else {
      var errorcode = response.statusCode.toString();
      print("Status code : $errorcode");
      throw Exception('Failed to load data');
    }
  }

  static void createarchive(
      {String? url,
      String? token,
      int? total,
      int? unnumber,
      String? status,
      int? senderid,
      int? receiverid,
      int? userid}) async {
    try {
      String data = "";
      final Map<String, dynamic> postData = {
        'total_amount': '$total',
        'un_number': '$unnumber',
        'status': '$status',
        'receiver_id': '$receiverid',
        'sender_id': '$senderid',
        'user_id': '$userid',
      };
      postData.forEach(
        (key, value) {
          data += key + "=" + value + "&";
        },
      );
      var response = await http.post(
        Uri.parse(url! + data),
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
      print("error $e");
    }
  }

  static void updatearchive(
      {String? url,
      String? token,
      int? archiveid,
      int? total,
      int? unnumber,
      String? status,
      int? senderid,
      int? receiverid,
      int? userid}) async {
    try {
      String data = "";
      final Map<String, dynamic> postData = {
        'total_amount': '$total',
        'un_number': '$unnumber',
        'status': '$status',
        'receiver_id': '$receiverid',
        'sender_id': '$senderid',
        'user_id': '$userid',
      };
      postData.forEach(
        (key, value) {
          data += key + "=" + value + "&";
        },
      );
      var response = await http.post(
        Uri.parse(url! + "$archiveid ?" + data),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 201) {
        print('Data updated successfully');
      } else {
        throw Exception("Error to update data");
      }
    } catch (e) {
      print("error $e");
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
