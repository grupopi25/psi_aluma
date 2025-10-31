import 'package:flutter/material.dart';
import 'package:psi_aluma/file/colors/colors.dart';
import 'package:psi_aluma/file/colors/gradients_colors.dart';

class Inicity extends StatelessWidget {
  const Inicity({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, '/starOption');
      },
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: GradientsColors.primaryGradient),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/logo.png', height: 150.0),
              SizedBox(height: 14.0),
              Center(child: Text('ALUMA', style: AppColors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
