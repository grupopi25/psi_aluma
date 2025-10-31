import 'package:flutter/material.dart';
import 'package:psi_aluma/pages/register/register_login.dart';

class SecondButtonaPP {
  static Widget secondButton(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RegisterLogin()),
        );
      },
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.white, width: 2),
        padding: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      child: const Text(
        'Criar Conta',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// Navigator.push(
//   context,
//   MaterialPageRoute(
//     builder: (context) => SecondScreen(), // A tela para onde você está navegando
//   ),
// );
