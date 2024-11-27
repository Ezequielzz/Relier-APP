import 'package:flutter/material.dart';
import 'package:relier/service_screen.dart';

class CustomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Barra de navegação personalizada
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 70,
          decoration: BoxDecoration(
            color: const Color(0xFF1F1F1F),
            borderRadius: BorderRadius.circular(37),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildNavItem(Icons.home, 'Home', 0),
              _buildNavItem(Icons.wallet, 'Serviços', 1),
              SizedBox(width: 50), // Espaço para o ícone central
              _buildNavItem(Icons.chat_bubble_outline, 'Conversas', 2),
              _buildNavItem(Icons.person, 'Perfil', 3),
            ],
          ),
        ),
        // Ícone central flutuante
        Positioned(
          top: 25, // Eleva o botão central
          left: MediaQuery.of(context).size.width / 2 - 35,
          child: GestureDetector(
            onTap: () {
              // Navegue para a nova tela
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ServicesPage()),
              );
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xFF5A5AFF),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/relierLogoBg.png', // Substitua pelo caminho do seu ícone
                  width: 80,
                  height: 80,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: selectedIndex == index
                ? const Color(0xFF5A5AFF)
                : const Color(0xFFCDCDCD),
          ),
          Text(
            label,
            style: TextStyle(
              color: selectedIndex == index
                  ? const Color(0xFF5A5AFF)
                  : const Color(0xFFCDCDCD),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
