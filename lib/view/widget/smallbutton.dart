import 'package:flutter/material.dart';

import '../../core/constant/color.dart';

Widget smallbutton(
        {required String name,
        required Function function,
        required Color color}) =>
    Container(
      height: 32,
      width: 64,
      child: TextButton(
        onPressed: () {
          function();
        },
        child: Text(
          "$name",
          style: TextStyle(
              color: Appcolor.primary2,
              fontSize: 10,
              fontWeight: FontWeight.bold),
        ),
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(color)),
      ),
    );
