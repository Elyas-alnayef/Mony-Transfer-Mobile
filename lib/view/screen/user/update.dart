import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/bottomnavicationbar.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/imageassets.dart';
import '../../widget/appbar.dart';
import '../../widget/bottomnavicationbar.dart';
import '../../widget/drawer.dart';
import '../../widget/dropdownb.dart';
import '../../widget/textfield.dart';

class Edituser extends StatelessWidget {
  const Edituser({super.key});

  @override
  Widget build(BuildContext context) {
    Bottomnavicationbarcontroller bottomcontroller =
        Get.put(Bottomnavicationbarcontroller());
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: drawer(),
      appBar: appbar(title: "Edit User"),
      bottomNavigationBar: bottombar(controller: bottomcontroller),
      floatingActionButton: IconButton(
          tooltip: "Save",
          onPressed: () {},
          icon: Icon(Icons.save),
          color: Appcolor.primary2,
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Appcolor.buttoncolor))),
      body: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                width: 100,
                height: 100,
                child: Image.asset(Images.updatelogo),
              ),
              SizedBox(height: 32),
              Text(
                "You can update your data if you need !",
                style: TextStyle(color: Appcolor.subtitl, fontSize: 15),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              mytextfield(
                hint: "Enter user name",
                lable: "Name",
                controller: TextEditingController(),
              ),
              SizedBox(
                height: 24,
              ),
              mytextfield(
                hint: "Enter user email",
                lable: "Email",
                controller: TextEditingController(),
              ),
              SizedBox(
                height: 24,
              ),
              mytextfield(
                hint: "Enter password",
                lable: "Password",
                controller: TextEditingController(),
              ),
              SizedBox(
                height: 24,
              ),
              dropdown(
                  hint: "User role",
                  items: [
                    DropdownMenuItem(
                      child: Text("Admin"),
                      value: "1",
                    ),
                    DropdownMenuItem(
                      child: Text("Manager"),
                      value: "2",
                    ),
                    DropdownMenuItem(
                      child: Text("user"),
                      value: "3",
                    ),
                  ].toList(),
                  function: (value) {
                    print(value.toString());
                    return value;
                  }),
            ]),
          )),
    );
  }
}
