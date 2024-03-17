import 'package:flutter/material.dart';
import 'package:transferapp/view/screen/archive/index.dart';

import 'core/constant/routs.dart';
import 'view/screen/home.dart';
import 'view/screen/login.dart';
import 'view/screen/point/create.dart';
import 'view/screen/point/index.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Approutes.login: (context) => const Login(),
  Approutes.home: (context) => const Home(),
  Approutes.archiveindex: (context) => const Archiveindex(),
  Approutes.pointindex: (context) => const Pointindex(),
  Approutes.createpoint: (context) => const Createpoint(),
};
