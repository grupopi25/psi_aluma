import 'package:flutter/material.dart';
import 'package:psi_aluma/file/buttons/icon_button_app.dart';
import 'package:psi_aluma/file/buttons/primary_button_app.dart';
import 'package:psi_aluma/file/colors/gradients_colors.dart';
import 'package:psi_aluma/file/forms/app_form.dart';
import 'package:psi_aluma/file/image/app_image.dart';
import 'package:psi_aluma/file/text/app_text.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _senhaAtiva = true;
  void _Password() {
    setState(() {
      _senhaAtiva = !_senhaAtiva;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,

            decoration: BoxDecoration(
              gradient: GradientsColors.primaryGradient,
            ),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Row(children: [IconButtonApp.backButton(context: context)]),
                SizedBox(height: 35),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: AppText.titulo(
                        'Preencha os Campos Abaixo Para Melhor Experiência',
                      ),
                    ),
                    SizedBox(height: 26),
                    AppForm.build(
                      hintText: 'Email',
                      labelText: 'Digite seu e-mail',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 10),
                    AppFormPassword.build(
                      hintText: 'Digite sua Senha',
                      labelText: 'Senha ',
                      senhaAtiva: _senhaAtiva,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _senhaAtiva ? Icons.visibility_off : Icons.visibility,
                          color: Colors.white,
                        ),
                        onPressed: _Password,
                      ),
                    ),
                    SizedBox(height: 11),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AppText.titulo(
                          'Esqueceu a senha?',

                          style: TextStyle(fontSize: 18, color: Colors.white60),
                        ),
                        SizedBox(width: 27),
                      ],
                    ),
                    SizedBox(height: 27),
                    CustomButton.primaryButton(
                      context: context,
                      text: 'Entrar',

                      onPressed: () {},
                    ),
                    SizedBox(height: 30),
                    AppText.titulo(
                      'ou cadastre-se com',
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    ),
                    SizedBox(height: 20),
                    Row(
                      spacing: 40,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppImage.load('assets/images/facebook.png', width: 35),
                        AppImage.load('assets/images/X-Logo.png', width: 35),
                        AppImage.load('assets/images/google.png', width: 35),
                      ],
                    ),
                    SizedBox(height: 20),

                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: AppText.titulo(
                        'Cadastrar-se Agora!',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      spacing: 10,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppImage.load('assets/images/logo.png', width: 30),
                        AppText.titulo('ALUMA'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
}