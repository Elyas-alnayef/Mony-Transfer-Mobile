import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transferapp/core/constant/imageassets.dart';
import '../../../controller/bottomnavicationbar.dart';
import '../../../controller/point/createcontroller.dart';
import '../../../core/constant/color.dart';
import '../../widget/bottomnavicationbar.dart';
import '../../widget/appbar.dart';
import '../../widget/drawer.dart';
import '../../widget/dropdownb.dart';
import '../../widget/textfield.dart';

class Createarchive extends StatelessWidget {
  const Createarchive({super.key});

  @override
  Widget build(BuildContext context) {
    Bottomnavicationbarcontroller bottomcontroller =
        Get.put(Bottomnavicationbarcontroller());
    Createpointcontroller controller = Get.put(Createpointcontroller());
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: drawer(),
      appBar: appbar(title: "Create Transfer"),
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
                child: Image.asset(Images.createlogo),
              ),
              SizedBox(height: 32),
              Text(
                "Make sure you'r sending for the right destination",
                style: TextStyle(color: Appcolor.subtitl, fontSize: 15),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              dropdown(
                  hint: "Sendr",
                  items: [
                    DropdownMenuItem(
                      child: Text("Al-Haffar"),
                      value: "1",
                    ),
                    DropdownMenuItem(
                      child: Text("Al-Saqeet"),
                      value: "2",
                    ),
                    DropdownMenuItem(
                      child: Text("Alito"),
                      value: "3",
                    ),
                  ].toList(),
                  function: (value) {
                    print(value.toString());
                    return value;
                  }),
              SizedBox(
                height: 24,
              ),
              dropdown(
                  hint: "Receiver",
                  items: [
                    DropdownMenuItem(
                      child: Text("Greer"),
                      value: "1",
                    ),
                    DropdownMenuItem(
                      child: Text("Al-Shamra"),
                      value: "2",
                    ),
                    DropdownMenuItem(
                      child: Text("Kabso"),
                      value: "3",
                    ),
                  ].toList(),
                  function: (value) {
                    print(value.toString());
                    return value;
                  }),
              SizedBox(
                height: 24,
              ),
              dropdown(
                  hint: "Choose User",
                  items: [
                    DropdownMenuItem(
                      child: Text("Elyas"),
                      value: "1",
                    ),
                    DropdownMenuItem(
                      child: Text("Nayef"),
                      value: "2",
                    ),
                    DropdownMenuItem(
                      child: Text("Khaled"),
                      value: "3",
                    ),
                  ].toList(),
                  function: (value) {
                    print(value.toString());
                    return value;
                  }),
              SizedBox(
                height: 24,
              ),
              mytextfield(
                hint: "Enter total",
                lable: "Total",
                controller: controller.namecontroller,
              ),
              SizedBox(
                height: 24,
              ),
              mytextfield(
                hint: "Enter Status",
                lable: "Status",
                controller: controller.countrycontroller,
              ),
            ]),
          )),
    );
  }
}
