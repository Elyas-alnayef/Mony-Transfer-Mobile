import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transferapp/core/constant/routs.dart';

class Updatepointcontroller extends GetxController {
  late TextEditingController namecontroller;
  late TextEditingController countrycontroller;
  late TextEditingController adresscontroller;
  late TextEditingController budgetcontroller;
  late TextEditingController mangercontroller;

  void savechanges() {
    Get.toNamed(Approutes.pointindex);
  }

  @override
  void onInit() {
    namecontroller = TextEditingController();
    countrycontroller = TextEditingController();
    adresscontroller = TextEditingController();
    budgetcontroller = TextEditingController();
    mangercontroller = TextEditingController();

    namecontroller.text = "al-Haffar";
    countrycontroller.text = "Syria";
    adresscontroller.text = "Azaz";
    budgetcontroller.text = "1600";

    super.onInit();
  }

  @override
  void dispose() {
    namecontroller.dispose();
    countrycontroller.dispose();
    adresscontroller.dispose();
    budgetcontroller.dispose();
    mangercontroller.dispose();
    super.dispose();
  }
}
