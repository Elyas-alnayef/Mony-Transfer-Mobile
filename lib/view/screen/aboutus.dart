import 'package:flutter/material.dart';
import 'package:transferapp/core/constant/color.dart';

import '../../core/constant/imageassets.dart';
import '../widget/appbar.dart';
import '../widget/drawer.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: drawer(),
      appBar: appbar(title: "About Us "),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(Images.aboutuslogo),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                          'We are a dynamic team of passionate individuals united by our love for programming. With diverse backgrounds and skill sets, we collaborate seamlessly to craft innovative solutions and bring ideas to life. Committed to excellence and continuous learning, we thrive on challenges and embrace new technologies. Together, we are dedicated to delivering high-quality software products that make a difference.',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        width: 135,
                        height: 160,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 221, 221, 221),
                              blurRadius: 2.0,
                              spreadRadius: 2.0,
                              offset: Offset(
                                1,
                                1,
                              ),
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            bottomLeft: Radius.circular(12),
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(12),
                          ),
                          border: Border.all(
                              color: Color.fromRGBO(215, 229, 255, 1.0)),
                        ),
                        child: Column(
                          children: [
                            Container(
                                height: 60,
                                width: 60,
                                child: Image.asset(Images.codinglogo,
                                    color: Appcolor.buttoncolor)),
                            SizedBox(
                              height: 8,
                            ),
                            Expanded(
                              child: Text('custom web application development',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Appcolor.subtitl,
                                  )),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        width: 135,
                        height: 160,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 221, 221, 221),
                              blurRadius: 2.0,
                              spreadRadius: 2.0,
                              offset: Offset(
                                1,
                                1,
                              ),
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            bottomLeft: Radius.circular(12),
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(12),
                          ),
                          border: Border.all(
                              color: Color.fromRGBO(215, 229, 255, 1.0)),
                        ),
                        child: Column(
                          children: [
                            Container(
                                height: 60,
                                width: 60,
                                child: Image.asset(Images.mobiledevelopmentlogo,
                                    color: Appcolor.buttoncolor)),
                            SizedBox(
                              height: 8,
                            ),
                            Expanded(
                              child:
                                  Text('custom mobile application development',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Appcolor.subtitl,
                                      )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        width: 135,
                        height: 160,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 221, 221, 221),
                              blurRadius: 2.0,
                              spreadRadius: 2.0,
                              offset: Offset(
                                1,
                                1,
                              ),
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            bottomLeft: Radius.circular(12),
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(12),
                          ),
                          border: Border.all(
                              color: Color.fromRGBO(215, 229, 255, 1.0)),
                        ),
                        child: Column(
                          children: [
                            Container(
                                height: 60,
                                width: 60,
                                child: Image.asset(Images.informationlogo,
                                    color: Appcolor.buttoncolor)),
                            SizedBox(
                              height: 8,
                            ),
                            Expanded(
                              child: Text('Systems analysis and design',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Appcolor.subtitl,
                                  )),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        width: 135,
                        height: 160,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 221, 221, 221),
                              blurRadius: 2.0,
                              spreadRadius: 2.0,
                              offset: Offset(
                                1,
                                1,
                              ),
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            bottomLeft: Radius.circular(12),
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(12),
                          ),
                          border: Border.all(
                              color: Color.fromRGBO(215, 229, 255, 1.0)),
                        ),
                        child: Column(
                          children: [
                            Container(
                                height: 60,
                                width: 60,
                                child: Image.asset(Images.datamanagementlogo,
                                    color: Appcolor.buttoncolor)),
                            SizedBox(
                              height: 8,
                            ),
                            Expanded(
                              child: Text('server management',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Appcolor.subtitl,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        width: 135,
                        height: 160,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 221, 221, 221),
                              blurRadius: 2.0,
                              spreadRadius: 2.0,
                              offset: Offset(
                                1,
                                1,
                              ),
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            bottomLeft: Radius.circular(12),
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(12),
                          ),
                          border: Border.all(
                              color: Color.fromRGBO(215, 229, 255, 1.0)),
                        ),
                        child: Column(
                          children: [
                            Container(
                                height: 60,
                                width: 60,
                                child: Image.asset(Images.uxlogo,
                                    color: Appcolor.buttoncolor)),
                            SizedBox(
                              height: 8,
                            ),
                            Expanded(
                              child:
                                  Text('user interface design,user experience',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Appcolor.subtitl,
                                      )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
