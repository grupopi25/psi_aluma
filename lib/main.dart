import 'package:flutter/material.dart';
import 'package:psi_aluma/pages/inicity/inicity.dart';
import 'package:psi_aluma/pages/register/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'ALUMA', home: Login());
  }
}
