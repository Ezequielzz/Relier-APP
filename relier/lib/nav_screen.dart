import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'home_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  PageController _pageController = PageController();
  int _currentIndex = 0; // Índice da página atual

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D1D1D), // Cor do fundo
      appBar: AppBar(
        backgroundColor: const Color(0xFF1D1D1D), // Cor do fundo
        elevation: 0,
        leadingWidth: 140,
        leading: Padding(
          padding: const EdgeInsets.only(right: 55.0),
          child: Image.asset(
            'assets/images/relierLogoBg(1).png',
            height: 150,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Center(
              // Botão "Já tem uma conta?"
             child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Text(
                  'Pular',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF1D1D1D), // Cor do fundo
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // PageView para gerenciar as páginas
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index; // Atualiza o índice da página atual
                });
              },
              children: [
                FirstScreen(),
                SecondScreen(),
                ThirdScreen(),
              ],
            ),
          ),

          // Indicadores de páginas
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
                  (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: _currentIndex == index ? 24 : 8, // Alarga o indicador ativo
                height: 8,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: _currentIndex == index
                      ? const Color.fromARGB(255, 118, 150, 255)
                      : Color.fromARGB(255, 118, 150, 255),
                  borderRadius: BorderRadius.circular(8), // Deixa os indicadores arredondados
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
