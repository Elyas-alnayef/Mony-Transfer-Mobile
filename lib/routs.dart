import 'package:flutter/material.dart';
import 'package:transferapp/view/screen/archive/index.dart';
import 'package:transferapp/view/screen/user/index.dart';

import 'core/constant/routs.dart';
import 'view/screen/aboutus.dart';
import 'view/screen/archive/create.dart';
import 'view/screen/archive/update.dart';
import 'view/screen/home.dart';
import 'view/screen/login.dart';
import 'view/screen/point/create.dart';
import 'view/screen/point/index.dart';
import 'view/screen/point/show.dart';
import 'view/screen/point/update.dart';
import 'view/screen/support.dart';
import 'view/screen/user/create.dart';
import 'view/screen/user/show.dart';
import 'view/screen/user/update.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Approutes.login: (context) => const Login(),
  Approutes.home: (context) => const Home(),
  Approutes.archiveindex: (context) => const Archiveindex(),
  Approutes.pointindex: (context) => const Pointindex(),
  Approutes.createpoint: (context) => const Createpoint(),
  Approutes.updatepoint: (context) => const Updatepoint(),
  Approutes.showpoint: (context) => const Showpoint(),
  Approutes.createarchive: (context) => const Createarchive(),
  Approutes.editarchive: (context) => const Updatearchive(),
  Approutes.userindex: (context) => const Usersindex(),
  Approutes.createuser: (context) => const Createuser(),
  Approutes.edituser: (context) => const Edituser(),
  Approutes.showuser: (context) => const Showuser(),
  Approutes.aboutus: (context) => const Aboutus(),
  Approutes.support: (context) => const Support(),
};
