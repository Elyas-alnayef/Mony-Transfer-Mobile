import 'package:flutter/material.dart';

import 'core/constant/routs.dart';
import 'view/screen/home.dart';
import 'view/screen/login.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Approutes.login: (context) => const Login(),
  Approutes.home: (context) => const Home(),
};
