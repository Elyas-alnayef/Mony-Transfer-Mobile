import 'package:ff_navigation_bar_plus/ff_navigation_bar_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transferapp/core/constant/color.dart';
import 'package:transferapp/view/widget/appbar.dart';

import '../../controller/bottomnavicationbar.dart';
import '../widget/bottomnavicationbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Bottomnavicationbarcontroller bottomcontroller =
        Get.put(Bottomnavicationbarcontroller());
    return Scaffold(
        drawer: Drawer(),
        appBar: appbar(title: "Today Summery"),
        bottomNavigationBar: bottombar(controller: bottomcontroller));
  }
}