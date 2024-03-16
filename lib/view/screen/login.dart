import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transferapp/core/constant/color.dart';

import '../../controller/auth/login.dart';
import '../../core/constant/imageassets.dart';
import '../widget/button.dart';
import '../widget/inKwellbutton.dart';
import '../widget/textfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(Images.loginlogo)),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Now you can use your credentials to sign in",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Appcolor.subtitl)),
                      SizedBox(
                        height: 24,
                      ),
                      mytextfield(
                        hint: "Enter email",
                        lable: "Email",
                        controller: controller.emailcontroller,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      mytextfield(
                        hint: "Enter password",
                        lable: "Password",
                        controller: controller.passwordcontroller,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          textButtonInkwell(name: "Currncies", function: () {}),
                          Spacer(),
                          textButtonInkwell(
                              name: "forget password ?", function: () {}),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      bigbutton(
                          name: "Sign in",
                          function: () {
                            controller.signin();
                          }),
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
