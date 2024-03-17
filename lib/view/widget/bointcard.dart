import "package:flutter/material.dart";

import "../../core/constant/color.dart";
import "../../core/constant/imageassets.dart";
import "smallbutton.dart";

Widget pointcard({
  required String name,
  required String country,
  required String adress,
  required String manager,
  required String currentbalance,
  required String createdate,
}) =>
    Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(174, 73, 198, 229), offset: Offset(1, 2))
          ],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 0.05)),
      height: 230,
      width: double.infinity,
      child: Column(
        children: [
          Row(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Name :",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text("$name"),
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
                    Text("$country"),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      "City :",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Container(
                        width: 100,
                        child:
                            Text("$adress", overflow: TextOverflow.ellipsis)),
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
                    Text("$manager", overflow: TextOverflow.ellipsis),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      "Current Balance :",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text("$currentbalance\$"),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      "Created At :",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text("$createdate"),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(Images.pointlogo),
                ),
              ],
            ),
          ]),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              smallbutton(
                  function: () {},
                  name: "Transfer",
                  color: Appcolor.buttoncolor),
              const SizedBox(
                width: 16,
              ),
              smallbutton(
                  function: () {}, name: "Edit", color: Appcolor.primary1),
              const SizedBox(
                width: 16,
              ),
              smallbutton(function: () {}, name: "Delet", color: Colors.red),
            ],
          ),
        ],
      ),
    );