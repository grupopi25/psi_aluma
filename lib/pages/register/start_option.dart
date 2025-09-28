import 'package:flutter/material.dart';
import 'package:psi_aluma/file/buttons/app_button.dart';
import 'package:psi_aluma/file/colors/gradients_colors.dart';
import 'package:psi_aluma/file/fonts_sizes/fonts.dart';
import 'package:psi_aluma/file/image/app_image.dart';

class StarOption extends StatelessWidget {
  const StarOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: GradientsColors.primaryGradient),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 138.0),
            AppImage.load('assets/images/logo.png', height: 150),
            SizedBox(height: 19.0),
            Align(child: Text('Bem Vindo(a) ao', style: Fonts.font24)),
            Align(child: Text('ALUMA!', style: Fonts.font24)),
            SizedBox(height: 111.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 49),
              child: AppButton.primaryButton(context),
            ),
            SizedBox(height: 21),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 49),

              child: AppButtonSecund.secondButton,
            ),
          ],
        ),
      ),
    );
  }
}
