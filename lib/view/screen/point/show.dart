import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/bottomnavicationbar.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/imageassets.dart';
import '../../widget/appbar.dart';
import '../../widget/bottomnavicationbar.dart';
import '../../widget/drawer.dart';

class Showpoint extends StatelessWidget {
  const Showpoint({super.key});

  @override
  Widget build(BuildContext context) {
    Bottomnavicationbarcontroller bottomcontroller =
        Get.put(Bottomnavicationbarcontroller());
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: drawer(),
      appBar: appbar(title: "Point Info"),
      bottomNavigationBar: bottombar(controller: bottomcontroller),
      body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(children: [
            Container(
              width: 100,
              height: 100,
              child: Image.asset(Images.showlogo),
            ),
            SizedBox(height: 32),
            Container(
              height: 180,
              child: Row(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Name :",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              "Country :",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              "Manager :",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              "Current balance :",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              "Adress :",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              "Created at :",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ]),
                  Spacer(),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Al-Haffar"),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Syria"),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Elyas-Alnayef", overflow: TextOverflow.ellipsis),
                        SizedBox(
                          height: 8,
                        ),
                        Text("15000\$", overflow: TextOverflow.ellipsis),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Azaz-Alhamra mol",
                            overflow: TextOverflow.ellipsis),
                        SizedBox(
                          height: 8,
                        ),
                        Text("2020-03-15", overflow: TextOverflow.ellipsis),
                      ])
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Appcolor.subtitl,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("Archives",
                      style: TextStyle(fontWeight: FontWeight.w600)),
                ),
                Expanded(
                  child: Divider(
                    color: Appcolor.subtitl,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("From :",
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            Text("Al-Haffar"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("To :",
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            Text("Al-Saqqet"),
                          ],
                        ),
                        Text("1500\$",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 24),
                  itemCount: 10),
            )
          ])),
    );
  }
}
