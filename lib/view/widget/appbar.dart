import 'package:flutter/material.dart';

import '../../core/constant/color.dart';

PreferredSizeWidget appbar({
  required String title,
}) =>
    AppBar(
      iconTheme: IconThemeData(color: Appcolor.primary2),
      backgroundColor: Appcolor.buttoncolor,
      toolbarHeight: 48,
      centerTitle: true,
      title: Text("$title",
          style: TextStyle(
              color: Appcolor.primary2,
              fontSize: 16,
              fontWeight: FontWeight.normal)),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.logout_outlined),
          color: Appcolor.primary2,
        )
      ],
    );
