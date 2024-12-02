import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'home_screen.dart';
import 'problem1_screen.dart';
import 'service_screen.dart';

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
          ServiceScreen(), // Tela de serviços
          // Problem1Screen(), // Exemplo de tela de contatos
          // ProfileScreen(), // Tela de perfil (você pode criar)
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
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
                  _pageController.jumpToPage(index);
                });
              },
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'Início',
                ),
                GButton(
                  icon: Icons.wallet_outlined,
                  text: 'Serviços',
                ),
                GButton(
                  icon: Icons.chat_bubble_outline,
                  text: 'Contatos',
                ),
                GButton(
                  icon: Icons.person_outline,
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
