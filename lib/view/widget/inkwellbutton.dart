import 'package:flutter/material.dart';

import '../../core/constant/color.dart';

Widget textButtonInkwell({required String name, required Function function}) =>
    InkWell(
        onTap: () {
          function();
        },
        child: Text("$name",
            style: TextStyle(color: Appcolor.primary1, fontSize: 12)));
