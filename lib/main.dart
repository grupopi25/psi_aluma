import 'package:flutter/material.dart';
import 'package:psi_aluma/pages/inicity/inicity.dart';
import 'package:psi_aluma/pages/register/login.dart';
import 'package:psi_aluma/pages/register/start_option.dart';
import 'package:psi_aluma/pages/register/register_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ALUMA',
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicity(),
        '/starOption': (context) => StarOption(),
        '/register': (context) => RegisterLogin(),
        '/login': (context) => Login(),
      },
    );
  }
}
