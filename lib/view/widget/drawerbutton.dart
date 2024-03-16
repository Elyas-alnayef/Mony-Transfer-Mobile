import 'package:flutter/material.dart';

import '../../core/constant/color.dart';

Widget drawerbutton(
        {required String label,
        required IconData icon,
        required Function function}) =>
    Container(
      width: double.infinity,
      child: TextButton.icon(
          style: ButtonStyle(
              alignment: Alignment.centerLeft,
              animationDuration: Duration(seconds: 1)),
          onPressed: () {
            function();
          },
          icon: Icon(
            icon,
            color: Appcolor.subtitl,
            size: 20,
          ),
          label: Text("$label",
              style: TextStyle(color: Appcolor.title, fontSize: 16))),
    );
