import 'package:flutter/material.dart';

import '../../core/constant/color.dart';

Widget mytextfield({
  required String hint,
  required String lable,
  required TextEditingController controller,
}) =>
    TextFormField(
      controller: controller,
      decoration: InputDecoration(
          //to make the lable in the app off the textfield always
          // floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hint,
          hintStyle: TextStyle(color: Appcolor.subtitl, fontSize: 14),
          label: Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Text("$lable")),
          contentPadding: const EdgeInsets.symmetric(horizontal: 25),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    );
