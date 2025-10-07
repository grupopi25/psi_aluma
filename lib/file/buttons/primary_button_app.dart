

import 'package:flutter/material.dart';

class PrimaryButtonApp {
  static FloatingActionButton primaryButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, '/login');
      },
      backgroundColor: Colors.white,
      child: Text(
        Texto('Entrar').conteudo,
        style: const TextStyle(
          color: Color(0xFF34629F),
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

 class  Texto {
  final String conteudo;
  Texto(this.conteudo);
}

class CustomButton {
  static Widget primaryButton({
    required BuildContext context,
    required String text,
    required VoidCallback onPressed,
    double width = 230,
    double height = 60,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: Colors.white,
        elevation: 4,

        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xFF34629F),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
