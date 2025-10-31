import 'package:flutter/material.dart';
import 'package:psi_aluma/file/buttons/primary_button_app.dart';
import 'package:psi_aluma/file/colors/colors.dart';
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
  void _password() {
    setState(() {
      _senhaAtiva = !_senhaAtiva;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: AppColors.azul),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(width: 5),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios, color: AppColors.branco),
                    ),
                  ],
                ),
                SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: AppText.titulo(
                    'Preencha os Campos abaixo Para melhor experiência.',
                  ),
                ),

                SizedBox(height: 20),
                Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: AppForm.build(
                          hintText: 'email@email.com',
                          labelText: 'Digite Seu E-mail',
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: AppFormPassword.build(
                          hintText: 'Digite sua Senha',
                          labelText: 'Senha',
                          senhaAtiva: _senhaAtiva,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _senhaAtiva
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.white,
                            ),
                            onPressed: _password,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: AppText.titulo(
                              'Esqueceu a senha?',
                              style: TextStyle(
                                fontSize: 15,
                                color: AppColors.branco,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      CustomButton.primaryButton(
                        context: context,
                        text: 'Entrar',
                        onPressed: () {},
                      ),

                      SizedBox(height: 20),
                      AppText.titulo(
                        'ou Cadastre-se com',
                        style: TextStyle(color: AppColors.branco, fontSize: 16),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.branco,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              'assets/images/facebook.png',
                              width: 40,
                            ),
                          ),
                          SizedBox(width: 8),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.branco,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              'assets/images/google.png',
                              width: 40,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      AppText.titulo(
                        'Não Possui uma conta ainda?',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.branco,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      SizedBox(
                        child: AppText.titulo(
                          'Cadastra-se agora!',
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.branco,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppImage.load('assets/images/logo.png', height: 50),
                    SizedBox(width: 8),
                    AppText.titulo('Aluma'),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
