import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transferapp/core/constant/routs.dart';

import '../../core/constant/color.dart';
import '../../core/constant/imageassets.dart';
import 'drawerbutton.dart';

Widget drawer() => Drawer(
      width: 250,
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                height: 150,
                width: 175,
                child: Image.asset(Images.applogo),
              )),
          Expanded(
              flex: 3,
              child: Container(
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      drawerbutton(
                        function: () {},
                        icon: Icons.person_pin,
                        label: "Profile",
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      drawerbutton(
                        function: () {
                          Get.toNamed(Approutes.aboutus);
                        },
                        icon: Icons.info_rounded,
                        label: "About Us",
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      drawerbutton(
                        function: () {
                          Get.toNamed(Approutes.support);
                        },
                        icon: Icons.support_agent_rounded,
                        label: "Support",
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      drawerbutton(
                        function: () {},
                        icon: Icons.settings,
                        label: "Settings",
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0, left: 65),
                        child: Text(
                          "Created by :Elyas",
                          style:
                              TextStyle(fontSize: 12, color: Appcolor.subtitl),
                        ),
                      )
                    ]),
              )),
        ],
      ),
    );
