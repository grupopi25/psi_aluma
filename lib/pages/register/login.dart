import 'package:flutter/material.dart';
import 'package:psi_aluma/file/colors/gradients_colors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: GradientsColors.primaryGradient),
      ),
    );
  }
}
