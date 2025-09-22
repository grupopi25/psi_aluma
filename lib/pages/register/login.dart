import 'package:flutter/material.dart';
import 'package:psi_aluma/file/colors/gradients_colors.dart';
import 'package:psi_aluma/file/fonts_sizes/fonts.dart';
import 'package:psi_aluma/file/image/app_image.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: GradientsColors.primaryGradient),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 138.0),
            Image.asset(AppImage.logo, height: 150.0),
            SizedBox(height: 19.0),
            Align(child: Text('Bem Vindo(a) ao', style: Fonts.font24)),
            Align(child: Text('ALUMA', style: Fonts.font24)),
          ],
        ),
      ),
    );
  }
}
