import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:psi_aluma/file/colors/colors.dart';
import 'package:psi_aluma/pages/home/homepage/home_page.dart';

class NavigatiomButtonScreens extends StatefulWidget {
  const NavigatiomButtonScreens({super.key});

  @override
  State<NavigatiomButtonScreens> createState() =>
      _NavigatiomButtonScreensState();
}

class _NavigatiomButtonScreensState extends State<NavigatiomButtonScreens> {
  int _indiceAtual = 1;
  final List<Widget> _telas = [
    HomePage(),
    Center(child: Text('Pesquisar')),
    Center(child: Text('Perfil')),
    Center(child: Text('settings')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.azulEscuro,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        selectedFontSize: 0,

        currentIndex: _indiceAtual,
        onTap: (int novoIndice) {
          setState(() {
            _indiceAtual = novoIndice;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.house,
              size: 30,
              color: AppColors.azulbotao,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/spa.png',scale: 1.5,),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.one_x_mobiledata, size: 001),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.headphones_outlined, size: 37, color: AppColors.azulbotao),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bookOpen, size: 30, color: AppColors.azulbotao),
            label: '',
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: AppColors.azulEscuro,
          borderRadius: BorderRadius.circular(35),
        ),
        height: 65,
        width: 65,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            backgroundColor: AppColors.branco,
            shape: CircleBorder(),
            elevation: 4,
            onPressed: () {},
            child: Icon(
              FontAwesomeIcons.stethoscope,
              color: AppColors.azulEscuro,
              size: 30,
            ),
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
