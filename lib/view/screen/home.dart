import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transferapp/core/constant/color.dart';
import 'package:transferapp/core/constant/imageassets.dart';
import 'package:transferapp/view/widget/appbar.dart';

import '../../controller/bottomnavicationbar.dart';
import '../widget/bottomnavicationbar.dart';
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
        child: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), border: Border.all()),
          height: 300,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Name :"),
                            Text("Al Saqeet"),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Text("City :"),
                            Text("Azaz"),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Text("Manager :"),
                            Text("khaled"),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Text("Current Balance :"),
                            Text("1500\$"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(Images.pointlogo, fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(color: Appcolor.subtitl, thickness: 1.0)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("Archive"),
                  ),
                  Expanded(
                      child: Divider(color: Appcolor.subtitl, thickness: 1.0)),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("From : Al Saqeet"),
                            Text("To :Al Haffar"),
                            Text("600\$"),
                          ],
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 24,
                        ),
                    itemCount: 6),
              )
            ],
          ),
        ),
      ),
    );
  }
}
