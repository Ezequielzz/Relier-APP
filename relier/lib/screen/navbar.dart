import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:relier/screen/agendamento_screen.dart';
import 'package:relier/screen/conversas_screen.dart';
import 'package:relier/screen/profile_screen.dart';
import 'home_screen.dart';
import 'problem1_screen.dart';
import 'package:iconly/iconly.dart';


class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF292929),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          HomeScreen(), // Tela inicial com cabeçalho e serviços
          AgendamentoScreen(), // Tela de serviços
          ConversasScreen(), // Tela de contatos
          ProfileScreen(), // Tela de perfil
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 16, right: 16),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF1F1F1F),
            borderRadius: BorderRadius.circular(37),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: GNav(
              backgroundColor: const Color(0xFF1F1F1F),
              color: Colors.grey,
              activeColor: const Color(0xFF7696FF),
              tabBackgroundColor: const Color(0xFF7696FF).withOpacity(0.2),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              gap: 8,
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500), // Tempo da animação
                    curve: Curves.easeInOut, // Curva de animação
                  );
                });
              },
              tabs: [
                GButton(
                  icon: IconlyLight.home, // Ícone da Iconly
                  text: 'Início',
                ),
                GButton(
                  icon: IconlyLight.wallet, // Ícone da Iconly
                  text: 'Serviços',
                ),
                GButton(
                  icon: IconlyLight.chat, // Ícone da Iconly
                  text: 'Contatos',
                ),
                GButton(
                  icon: IconlyLight.profile, // Ícone da Iconly
                  text: 'Perfil',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
