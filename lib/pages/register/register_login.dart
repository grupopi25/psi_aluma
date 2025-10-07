import 'package:flutter/material.dart';
import 'package:psi_aluma/file/buttons/icon_button_app.dart';
import 'package:psi_aluma/file/buttons/primary_button_app.dart';

import 'package:psi_aluma/file/colors/gradients_colors.dart';
import 'package:psi_aluma/file/image/app_image.dart';
import 'package:psi_aluma/file/forms/app_form.dart';
import 'package:psi_aluma/file/text/app_text.dart';

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
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(gradient: GradientsColors.primaryGradient),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                Row(
                  children: [
                    IconButtonApp.backButton(
                      context: context,
                      icon: Icons.chevron_left,
                      color: Colors.white,
                      label: 'Voltar',
                    ),
                  ],
                ),
<<<<<<< HEAD
                SizedBox(height: 20),
=======

>>>>>>> 634a1d139ac5bdbf7067c3b2ee77278e11bc574c
                Container(
                  padding: EdgeInsets.all(22),
                  child: AppText.titulo(
                    'Preecha os Campos Abaixo Para Melhor Experiência.',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
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
                          validator: null,
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
                      SizedBox(height: 56),
                      CustomButton.primaryButton(
                        context: context,
                        text: 'Criar Conta',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 50),
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
      ),
    );
  }
}
