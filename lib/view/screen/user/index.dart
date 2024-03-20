import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transferapp/view/widget/usercard.dart';

import '../../../controller/bottomnavicationbar.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/routs.dart';
import '../../widget/appbar.dart';
import '../../widget/bottomnavicationbar.dart';
import '../../widget/drawer.dart';

class Usersindex extends StatelessWidget {
  const Usersindex({super.key});

  @override
  Widget build(BuildContext context) {
    Bottomnavicationbarcontroller bottomcontroller =
        Get.put(Bottomnavicationbarcontroller());
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: drawer(),
      appBar: appbar(title: "Users"),
      bottomNavigationBar: bottombar(controller: bottomcontroller),
      floatingActionButton: IconButton(
          tooltip: "new",
          onPressed: () {
            Get.toNamed(Approutes.createuser);
          },
          icon: Icon(Icons.add),
          color: Appcolor.primary2,
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Appcolor.buttoncolor))),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.separated(
            itemBuilder: (index, context) {
              return usercard(
                  name: "Nayef",
                  role: "Admin",
                  email: "NayefALnayef@gmail.com");
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 24,
              );
            },
            itemCount: 10),
      ),
    );
  }
}
