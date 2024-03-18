import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'core/functions/pointoprations.dart';
import 'routs.dart';
import 'view/screen/login.dart';

void main() async {
  Pointoprations.createpoint(
      apiurl: "http://192.168.1.14:9000/api/create_point?",
      token: "LiEIUixU8gAMnePKro8eBKQsvOfqZDOsFj2GgFDUffe32c62",
      adress: "Kilis",
      country: "Turky",
      currentbalance: 10000,
      managerid: 1,
      name: "Al-Mahmoud");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EMS',
      routes: routes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}
