import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transferapp/core/constant/imageassets.dart';
import '../../../controller/bottomnavicationbar.dart';
import '../../../controller/point/createcontroller.dart';
import '../../../core/constant/color.dart';
import '../../widget/bottomnavicationbar.dart';
import '../../widget/appbar.dart';
import '../../widget/drawer.dart';
import '../../widget/textfield.dart';

class Createpoint extends StatelessWidget {
  const Createpoint({super.key});

  @override
  Widget build(BuildContext context) {
    Bottomnavicationbarcontroller bottomcontroller =
        Get.put(Bottomnavicationbarcontroller());
    Createpointcontroller controller = Get.put(Createpointcontroller());
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: drawer(),
      appBar: appbar(title: "Create Point"),
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
                "Make sure off your data before saving ",
                style: TextStyle(color: Appcolor.subtitl, fontSize: 15),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              mytextfield(
                hint: "Enter point name",
                lable: "Name",
                controller: controller.namecontroller,
              ),
              SizedBox(
                height: 24,
              ),
              mytextfield(
                hint: "Enter point country",
                lable: "Country",
                controller: controller.countrycontroller,
              ),
              SizedBox(
                height: 24,
              ),
              mytextfield(
                hint: "Enter point adress",
                lable: "Adress",
                controller: controller.adresscontroller,
              ),
              SizedBox(
                height: 24,
              ),
              mytextfield(
                hint: "Enter budget",
                lable: "Budget",
                controller: controller.budgetcontroller,
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                padding: EdgeInsets.all(8),
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Appcolor.subtitl)),
                child: DropdownButton(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  isExpanded: true,
                  hint: Text("Choose Manager"),
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
                  onChanged: (value) {
                    print(value);
                  },
                  value: null,
                ),
              )
            ]),
          )),
    );
  }
}
