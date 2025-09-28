import 'package:flutter/material.dart';
import 'package:psi_aluma/file/buttons/icon_button_app.dart';
import 'package:psi_aluma/file/buttons/primary_button_app.dart';
import 'package:psi_aluma/file/colors/gradients_colors.dart';
import 'package:psi_aluma/file/forms/app_form.dart';
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
        body: Container(
          decoration: BoxDecoration(gradient: GradientsColors.primaryGradient),
          child: Column(
            children: [
              Row(children: [IconButtonApp.backButton(context: context)]),
              SizedBox(height: 85),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: AppText.titulo(
                      'Preencha os Campos Abaixo Para Melhor Experiência',
                    ),
                  ),
                  SizedBox(height: 46),
                  AppForm.build(
                    hintText: 'Email',
                    labelText: 'Digite seu e-mail',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 46),
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
                  SizedBox(height: 47),
                  CustomButton.primaryButton(
                    context: context,
                    text: 'Entrar',

                    onPressed: () {},
                  ),
                  SizedBox(height: 60),
                  AppText.titulo('ou cadastre-se com'),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      IconButton(
                        onPressed: null,
                        icon: Icon(Icons.facebook),
                        color: Colors.white,
                        iconSize: 50,
                      ),
                    ],
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
