import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transferapp/core/constant/color.dart';
import '../../../controller/bottomnavicationbar.dart';
import '../../../controller/point/indexcontroller.dart';
import '../../widget/appbar.dart';
import '../../widget/bointcard.dart';
import '../../widget/bottomnavicationbar.dart';
import '../../widget/drawer.dart';

class Pointindex extends StatelessWidget {
  const Pointindex({super.key});

  @override
  Widget build(BuildContext context) {
    Indexcontroller controller = Get.put(Indexcontroller());
    Bottomnavicationbarcontroller bottomcontroller =
        Get.put(Bottomnavicationbarcontroller());
    return Scaffold(
      drawer: drawer(),
      appBar: appbar(title: "Points"),
      bottomNavigationBar: bottombar(controller: bottomcontroller),
      floatingActionButton: IconButton(
          onPressed: () {
            controller.gotocreatepoint();
          },
          icon: Icon(Icons.add),
          color: Appcolor.primary2,
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Appcolor.buttoncolor))),
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Obx(
            () => ListView.separated(
              itemBuilder: (context, index) => pointcard(
                  gotoedit: () {
                    controller.gotoedit(index);
                  },
                  gotoshow:() {
                    controller.gotoshow(index);
                  },
                  name: controller.points[index].name,
                  adress: "$controller.points[index].adress",
                  country: controller.points[index].country,
                  createdate: "2020-10-10",
                  currentbalance: "$controller.points[index].currentBalance",
                  manager: controller.points[index].managerId.toString()),
              itemCount: controller.points.length,
              separatorBuilder: (context, index) => SizedBox(
                height: 24,
              ),
            ),
          )),
    );
  }
}
