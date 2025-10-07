import 'package:flutter/material.dart';
import 'package:psi_aluma/routes/registrer/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: AppRoutes.routes);
  }
}
