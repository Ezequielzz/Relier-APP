import 'package:flutter/material.dart';
import 'package:relier/card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Navegação personalizada pode ser adicionada aqui
    // Por exemplo, trocar o conteúdo da tela com base no índice
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF292929), // Cor do fundo
      body: SingleChildScrollView( // Adiciona rolagem
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container principal
            Container(
              width: double.infinity,
              height: 217,
              decoration: BoxDecoration(
                color: const Color(0xFF1F1F1F),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(34),
                  bottomRight: Radius.circular(34),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    'Olá Usuário!',
                    style: TextStyle(
                      color: Color(0xFFCDCDCD),
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Barra de pesquisa
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      width: 330,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF292929),
                          hintText: 'Qual serviço você procura?',
                          hintStyle: const TextStyle(
                            color: Color(0xFFCDCDCD),
                            fontWeight: FontWeight.w300,
                          ),
                          prefixIcon:
                          const Icon(Icons.search, color: Color(0xFFCDCDCD)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Grid com os cards
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                shrinkWrap: true, // Garante que a grade ocupe apenas o espaço necessário
                physics: const NeverScrollableScrollPhysics(), // Desativa o scroll interno da grid
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Número de colunas
                  crossAxisSpacing: 10, // Espaçamento entre colunas
                  mainAxisSpacing: 10, // Espaçamento entre linhas
                  childAspectRatio: 1, // Proporção do card (largura/altura)
                ),
                itemCount: 6, // Total de itens
                itemBuilder: (BuildContext context, int index) {
                  // Lista de dados dos cards
                  final List<Map<String, dynamic>> cardData = [
                    {'icon': Icons.construction, 'color': Colors.blue[600], 'label': 'Construções\n& Obras'},
                    {'icon': Icons.plumbing, 'color': Colors.blue[600], 'label': 'Encanamento'},
                    {'icon': Icons.eco, 'color': Colors.blue[600], 'label': 'Jardinagem'},
                    {'icon': Icons.format_paint, 'color': Colors.blue[600], 'label': 'Pinturas'},
                    {'icon': Icons.bolt, 'color': Colors.blue[600], 'label': 'Elétrica'},
                    {'icon': Icons.layers, 'color': Colors.blue[600], 'label': 'Outros'},
                  ];

                  // Retorna os cards com base nos dados
                  return buildServiceCard(
                    icon: cardData[index]['icon'],
                    color: cardData[index]['color'],
                    label: cardData[index]['label'],
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            // Card adicional (com promoções ou informações extras)
            Center(
              child: Container(
                width: 355,
                height: 175,
                margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 28),
                decoration: BoxDecoration(
                  color: const Color(0xFF1F1F1F),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Parte da esquerda (texto e imagem)
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Conheça nossos\nplanos feitos para você!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Image.asset(
                              'assets/images/Enthusiastic-bro(1).png',
                              width: 115,
                              height: 115,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Parte da direita (botão circular)
                    Expanded(
                      flex: 1,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color(0xFF5A5AFF),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(200),
                                bottomLeft: Radius.circular(200),
                              ),
                            ),
                            margin: const EdgeInsets.only(right: 20),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 107,
                            height: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color(0xFF7696FF),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(200),
                                bottomLeft: Radius.circular(200),
                                topRight: Radius.circular(27),
                                bottomRight: Radius.circular(27),
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                            size: 35,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }


  // Método para criar os cards
  Widget buildServiceCard({
    required IconData icon,
    required Color color,
    required String label,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1F1F1F), // Cor de fundo do card
        borderRadius: BorderRadius.circular(12), // Bordas arredondadas
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              color: color,
              size: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
            child: Text(
              label,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
