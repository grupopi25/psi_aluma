import 'package:flutter/material.dart';
import 'package:psi_aluma/pages/inicity/inicity.dart';
import 'package:psi_aluma/pages/register/login.dart';
import 'package:psi_aluma/pages/register/register_login.dart';
import 'package:psi_aluma/pages/register/start_option.dart';

class AppRoutes {
  static const initialRoute = '/';

  static final routes = <String, WidgetBuilder>{
    '/': (context) => const StarOption(),
    '/inicio': (context) => const Inicity(),
    '/register': (context) => RegisterLogin(),
        '/login': (context) => Login(),
  };
}
