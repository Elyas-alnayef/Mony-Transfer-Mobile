import 'package:flutter/material.dart';

import '../../core/constant/color.dart';

Widget bigbutton({required String name, required Function function}) =>
    Container(
      height: 48,
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          function();
        },
        child: Text(
          "$name",
          style: TextStyle(color: Appcolor.primary2),
        ),
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Appcolor.buttoncolor)),
      ),
    );
