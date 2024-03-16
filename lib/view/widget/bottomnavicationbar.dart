import 'package:flutter/material.dart';
import 'package:ff_navigation_bar_plus/ff_navigation_bar_plus.dart';
import 'package:get/get.dart';

import '../../controller/bottomnavicationbar.dart';
import '../../core/constant/color.dart';

Widget bottombar({
  required Bottomnavicationbarcontroller controller,
}) =>
    Obx(
      () => FFNavigationBar(
        theme: FFNavigationBarTheme(
          unselectedItemIconColor: Appcolor.primary2,
          unselectedItemLabelColor: Appcolor.primary2,
          barBackgroundColor: Appcolor.buttoncolor,
          selectedItemBorderColor: Appcolor.buttoncolor,
          selectedItemBackgroundColor: Appcolor.primary2,
          selectedItemIconColor: Colors.black,
          selectedItemLabelColor: Appcolor.primary2,
        ),
        selectedIndex: controller.slectedindex.value,
        onSelectTab: (index) {
          controller.changeindex(index);
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: 'Home',
          ),
          FFNavigationBarItem(
            iconData: Icons.transform_outlined,
            label: 'Transforms',
          ),
          FFNavigationBarItem(
            iconData: Icons.business_outlined,
            label: 'Points',
          ),
          FFNavigationBarItem(
            iconData: Icons.person,
            label: 'Users',
          ),
        ],
      ),
    );
