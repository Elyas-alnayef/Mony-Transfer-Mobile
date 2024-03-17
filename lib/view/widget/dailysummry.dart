import 'package:flutter/material.dart';

import '../../core/constant/color.dart';
import '../../core/constant/imageassets.dart';

Widget summrycard({
  required String from,
  required String to,
  required String total,
  required String city,
  required String name,
  required String manager,
  required String currentbalance,
}) =>
    Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: const Color.fromARGB(174, 73, 198, 229),
                offset: Offset(1, 2))
          ],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 0.05)),
      height: 300,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
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
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text("City :",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        Text("$city"),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text("Manager :",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        Text("$manager"),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text("Current Balance :",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        Text("$currentbalance\$"),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset(Images.pointlogo, fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 24,
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(child: Divider(color: Appcolor.subtitl, thickness: 1.0)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("Archive",
                    style: TextStyle(fontWeight: FontWeight.w600)),
              ),
              Expanded(child: Divider(color: Appcolor.subtitl, thickness: 1.0)),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("From :",
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            Text("$from"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("To :",
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            Text("$to"),
                          ],
                        ),
                        Text("$total\$",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 24,
                    ),
                itemCount: 6),
          )
        ],
      ),
    );
