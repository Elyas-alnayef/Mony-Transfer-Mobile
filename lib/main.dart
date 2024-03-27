import 'package:get/get.dart';
import 'package:flutter/material.dart';

// import 'core/functions/pointoprations.dart';
import 'core/functions/archiveoprations.dart';
import 'core/functions/useroprations.dart';
import 'routs.dart';
import 'view/screen/login.dart';

void main() async {
  //Archiveopratons.fetchdata(token: "LiEIUixU8gAMnePKro8eBKQsvOfqZDOsFj2GgFDUffe32c62" ,url:"http://192.168.1.10:9000/api/archives" );
  // Archiveopratons.fetcharchive(token: "LiEIUixU8gAMnePKro8eBKQsvOfqZDOsFj2GgFDUffe32c62" ,url:"http://192.168.1.10:9000/api/archive/",id: 1 );
  //Archiveopratons.createarchive(token: "LiEIUixU8gAMnePKro8eBKQsvOfqZDOsFj2GgFDUffe32c62" ,url:"http://192.168.1.10:9000/api/create_archive?",receiverid: 1,senderid: 2,status: "Waiting",total: 1000,unnumber: 000,userid: 1);
  //Archiveopratons.updatearchive(token: "LiEIUixU8gAMnePKro8eBKQsvOfqZDOsFj2GgFDUffe32c62" ,archiveid: 1,url:"http://192.168.1.10:9000/api/create_archive?",receiverid: 1,senderid: 2,status: "Delevred",total: 500,unnumber: 000,userid: 1);
  //Useroprations.fetchuser(token: "LiEIUixU8gAMnePKro8eBKQsvOfqZDOsFj2GgFDUffe32c62" ,url:"http://192.168.1.10:9000/api/user/",id: 1 );
 // Useroprations.createuser(token: "LiEIUixU8gAMnePKro8eBKQsvOfqZDOsFj2GgFDUffe32c62" ,url:"http://192.168.1.10:9000/api/create_user/?",name:"Asmar",email: "elyasalnayef@gmail.com",password: "123456789",role: "Admin" );


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
