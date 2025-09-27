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
            Align(child: Text('ALUMA!', style: Fonts.font24)),
            SizedBox(height: 111.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 49),
              child: FloatingActionButton(
                onPressed: null,
                backgroundColor: Colors.white,
                child: Text(
                  'Entrar',
                  style: TextStyle(
                    color: Color(0xFF34629F),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 21),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 49),

              child: OutlinedButton(
                onPressed: null,
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white, width: 2),
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(15),
                  ),
                ),
                child: Text(
                  'Criar Conta',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
