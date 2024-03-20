import "package:flutter/material.dart";

import "../../core/constant/color.dart";
import "../../core/constant/imageassets.dart";
import "smallbutton.dart";

Widget usercard({
  required String name,
  required String role,
  required String email,
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
      height: 180,
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
                      "Role :",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text("$role"),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      "Email :",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Container(
                        width: 100,
                        child: Text("$email", overflow: TextOverflow.ellipsis)),
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
                  child: Image.asset(Images.userlogo),
                ),
              ],
            ),
          ]),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              smallbutton(
                  function: () {}, name: "Details", color: Appcolor.primary1),
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
