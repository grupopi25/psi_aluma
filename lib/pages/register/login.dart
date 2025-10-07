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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: GradientsColors.primaryGradient,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:  16.0,vertical: 20), // espaçamento padrão
            child: Column(
              children: [
                SizedBox(height: 30,),
                Row(children: [IconButtonApp.backButton(context: context)]),
                const SizedBox(height: 105),
                AppText.titulo('Preencha os Campos Abaixo Para Melhor Experiência'),
                const SizedBox(height: 26),
                AppForm.build(
                  hintText: 'Email',
                  labelText: 'Digite seu e-mail',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 10),
                AppFormPassword.build(
                  hintText: 'Digite sua Senha',
                  labelText: 'Senha',
                  senhaAtiva: _senhaAtiva,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _senhaAtiva ? Icons.visibility_off : Icons.visibility,
                      color: Colors.white,
                    ),
                    onPressed: _Password,
                  ),
                ),
                const SizedBox(height: 11),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppText.titulo(
                      'Esqueceu a senha?',
                      style: TextStyle(fontSize: 18, color: Colors.white60),
                    ),
                  ],
                ),
                const SizedBox(height: 27),
                CustomButton.primaryButton(
                  context: context,
                  text: 'Entrar',
                  onPressed: () {},
                ),
                const SizedBox(height: 30),
                AppText.titulo(
                  'ou cadastre-se com',
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppImage.load('assets/images/facebook.png', width: 35),
                    const SizedBox(width: 40),
                    AppImage.load('assets/images/X-Logo.png', width: 35),
                    const SizedBox(width: 40),
                    AppImage.load('assets/images/google.png', width: 35),
                  ],
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: AppText.titulo(
                    'Cadastrar-se Agora!',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    AppImage.load('assets/images/logo.png', width: 30),
                    const SizedBox(width: 10),
                    AppText.titulo('ALUMA'),
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