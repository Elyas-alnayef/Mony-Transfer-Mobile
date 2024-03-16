import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routs.dart';

class LoginController extends GetxController {
  late TextEditingController emailcontroller;
  late TextEditingController passwordcontroller;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  void onInit() {
    emailcontroller = TextEditingController();
    passwordcontroller = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  void signin() {
    gotohome();
  }

  void gotohome() {
    Get.offNamed(Approutes.home);
  }
}
