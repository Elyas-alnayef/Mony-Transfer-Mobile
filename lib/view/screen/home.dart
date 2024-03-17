import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transferapp/core/constant/color.dart';
import 'package:transferapp/core/constant/imageassets.dart';
import 'package:transferapp/view/widget/appbar.dart';

import '../../controller/bottomnavicationbar.dart';
import '../widget/bottomnavicationbar.dart';
import '../widget/dailysummry.dart';
import '../widget/drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Bottomnavicationbarcontroller bottomcontroller =
        Get.put(Bottomnavicationbarcontroller());
    return Scaffold(
      drawer: drawer(),
      appBar: appbar(title: "Today Summery"),
      bottomNavigationBar: bottombar(controller: bottomcontroller),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.separated(
              itemBuilder: (context, index) => summrycard(
                  city: "Azaz",
                  currentbalance: "15000",
                  from: "Al-Haffar",
                  to: "Alsaqeet",
                  manager: "Khaled",
                  name: "Al-Haffar",
                  total: "200"),
              separatorBuilder: (context, index) => SizedBox(height: 24),
              itemCount: 6)),
    );
  }
}
