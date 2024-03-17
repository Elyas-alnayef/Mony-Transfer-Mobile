import 'package:flutter/material.dart';

import '../../core/constant/color.dart';
import '../../core/constant/imageassets.dart';
import 'smallbutton.dart';

Widget archivecard({
  required String from,
  required String to,
  required String total,
  required String status,
  required String user,
  required String date,
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
      height: 200,
      width: double.infinity,
      child: Row(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "From :",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text("$from"),
              ],
            ),
            Row(
              children: [
                Text(
                  "Total :",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text("$total\$"),
              ],
            ),
            Row(
              children: [
                Text(
                  "To :",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text("$to"),
              ],
            ),
            Row(
              children: [
                Text(
                  "User :",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text("$user"),
              ],
            ),
            Row(
              children: [
                Text(
                  "Status :",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text("$status"),
              ],
            ),
            Row(
              children: [
                Text(
                  "Date :",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text("$date"),
              ],
            ),
          ],
        ),
        const Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.asset(Images.arcivelogo),
            ),
            Row(
              children: [
                smallbutton(
                    function: () {}, name: "Edit", color: Appcolor.primary1),
                const SizedBox(
                  width: 16,
                ),
                smallbutton(function: () {}, name: "Delet", color: Colors.red)
              ],
            ),
          ],
        ),
      ]),
    );
