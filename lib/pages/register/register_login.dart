import 'package:flutter/material.dart';
import 'package:psi_aluma/file/buttons/app_button.dart';

import 'package:psi_aluma/file/colors/gradients_colors.dart';
import 'package:psi_aluma/file/image/app_image.dart';
import 'package:psi_aluma/pages/forms/app_form.dart';
import 'package:psi_aluma/pages/text/app_text.dart';

class RegisterLogin extends StatefulWidget {
  const RegisterLogin({super.key});

  @override
  State<RegisterLogin> createState() => _RegisterLoginState();
}

class _RegisterLoginState extends State<RegisterLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: GradientsColors.primaryGradient),
          child: Column(
            children: [
              SizedBox(height: 42),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),

                  SizedBox(width: 15),
                  Align(
                    child: Text(
                      'Voltar',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 85),
              Container(
                padding: EdgeInsets.all(22),
                child: AppText.titulo(
                  'Preecha os campos abaixo para melhor experência.',
                ),
              ),
              SizedBox(height: 46),
              Form(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: AppForm.build(
                        hintText: 'Nome e Sobrenome',
                        labelText: 'Nome',
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: AppForm.build(
                        hintText: 'E-mail',
                        labelText: 'Email',
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: AppForm.build(
                        hintText: 'CPF - apenas números',
                        labelText: 'CPF',
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: AppForm.build(
                        hintText: 'Senha',
                        labelText: 'Senha',
                      ),
                    ),
                    SizedBox(height: 96),
                    CustomButton.primaryButton(context, 'Criar Conta', () {}),
                  ],
                ),
              ),
              SizedBox(height: 53),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 15,
                children: [
                  AppImage.load('assets/images/logo.png', height: 30),
                  AppText.titulo(
                    'Aluma',
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
