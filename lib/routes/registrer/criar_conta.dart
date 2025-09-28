import 'package:flutter/material.dart';
import 'package:psi_aluma/pages/inicity/inicity.dart';
import 'package:psi_aluma/pages/register/login.dart';

class AppRoutes {
  static const initialRoute = '/';

  static final routes = <String, WidgetBuilder>{
    '/': (context) => const Login(),
    '/inicio': (context) => const Inicity(),
  };
}
