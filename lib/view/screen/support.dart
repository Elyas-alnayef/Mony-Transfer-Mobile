import 'package:flutter/material.dart';
import 'package:transferapp/core/constant/color.dart';
import 'package:transferapp/core/constant/imageassets.dart';

import '../widget/appbar.dart';
import '../widget/button.dart';
import '../widget/drawer.dart';
import '../widget/textfield.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: drawer(),
      appBar: appbar(title: "Support"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Image.asset(Images.supportlogo),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            'Welcome to our Support Center! We are here to help you make the most of our app and ensure your experience is smooth and enjoyable. If you have any questions, encounter any issues, or need assistance with anything related to the app, you have come to the right place.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Appcolor.subtitl,
                            ))),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Column(
                  children: [
                    mytextfield(
                        hint: "Write your Email",
                        lable: "Email",
                        controller: TextEditingController()),
                    SizedBox(
                      height: 24,
                    ),
                    mytextfield(
                        hint: "Write your problem",
                        lable: "Message",
                        controller: TextEditingController()),
                    SizedBox(
                      height: 24,
                    ),
                    bigbutton(
                      function: () {},
                      name: "Send",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
