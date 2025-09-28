import 'package:flutter/material.dart';
import 'package:psi_aluma/pages/inicity/inicity.dart';
import 'package:psi_aluma/pages/register/login.dart';
import 'package:psi_aluma/pages/register/register_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ALUMA',
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicity(),
        '/login': (context) => Login(),
        '/register': (context) => RegisterLogin(),
      },
    );
  }
}
