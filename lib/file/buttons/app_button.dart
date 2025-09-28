import 'package:flutter/material.dart';

class AppButton {
  static FloatingActionButton primaryButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, '/register');
      },
      backgroundColor: Colors.white,
      child: Text(
        texto('Entrar').conteudo,
        style: const TextStyle(
          color: Color(0xFF34629F),
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class AppButtonSecund {
  static final secondButton = OutlinedButton(
    onPressed: () {},
    style: OutlinedButton.styleFrom(
      side: BorderSide(color: Colors.white, width: 2),
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(15),
      ),
    ),
    child: Text(
      texto('Criar Conta').conteudo,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

class texto {
  final String conteudo;
  texto(this.conteudo);
}

class CustomButton {
  static Widget primaryButton(
    BuildContext context,
    String text,
    VoidCallback onPressed,
  ) {
    return SizedBox(
      width: 230,
      height: 60,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: Colors.white,
        elevation: 4,
        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xFF34629F),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
