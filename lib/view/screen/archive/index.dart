import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/bottomnavicationbar.dart';
import '../../widget/appbar.dart';
import '../../widget/archivecard.dart';
import '../../widget/bottomnavicationbar.dart';
import '../../widget/drawer.dart';

class Archiveindex extends StatelessWidget {
  const Archiveindex({super.key});

  @override
  Widget build(BuildContext context) {
    Bottomnavicationbarcontroller bottomcontroller =
        Get.put(Bottomnavicationbarcontroller());
    return Scaffold(
      drawer: drawer(),
      appBar: appbar(title: "Archives"),
      bottomNavigationBar: bottombar(controller: bottomcontroller),
      body: Padding(
          padding: EdgeInsets.all(16),
          child: ListView.separated(
              itemBuilder: (contetx, index) => archivecard(
                  date: "2024-10-13",
                  from: "Al-Sqeet",
                  status: "Waiting",
                  to: "Alito",
                  total: "500",
                  user: "Nayef Alnayef"),
              separatorBuilder: (context, index) => SizedBox(
                    height: 24,
                  ),
              itemCount: 10)),
    );
  }
}
