import 'package:flutter/material.dart';
import 'package:relier/screen/planos_screen.dart';
import 'package:relier/screen/problem1_screen.dart';
import 'package:iconly/iconly.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Controlador para a visualização das paginas na navbar
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF292929),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Cabeçalho
            _buildHeader(),

            // Grid de serviços
            _buildServiceGrid(),

            // Card promocional
            _buildPromoCard(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      height: 200,
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
    );
  }

  Widget _buildServiceGrid() {
    final List<Map<String, dynamic>> cardData = [
      {
        'image': 'assets/images/4.png',
        'label': 'Construções\n& Obras'
      },
      {
        'image': 'assets/images/3.png',
        'label': 'Encanamento'
      },
      {'image': 'assets/images/6.png', 'label': 'Jardinagem'},
      {'image': 'assets/images/1.png', 'label': 'Pinturas'},
      {'image': 'assets/images/5.png', 'label': 'Elétrica'},
      {'image': 'assets/images/2.png', 'label': 'Outros'},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 3 colunas
          crossAxisSpacing: 10, // Espaçamento horizontal
          mainAxisSpacing: 10, // Espaçamento vertical
        ),
        itemCount: cardData.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              if (cardData[index]['label'] == 'Encanamento') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextnew) => const Problem1Screen(),
                  ),
                );
              } else {
                print('Card ${cardData[index]['label']} clicado!');
              }
            },
            child: buildServiceCard(
              image: cardData[index]['image'],
              label: cardData[index]['label'],
            ),
          );
        },
      ),
    );
  }

  Widget _buildPromoCard(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          // Navega para a nova tela ao clicar no card
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PlanosScreen()),
          );
        },
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
              Expanded(
                flex: 2,
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
    );
  }


  Widget buildServiceCard({
    required String image,
    required String label,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1F1F1F),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espaçamento entre os elementos
          crossAxisAlignment: CrossAxisAlignment.start, // Alinhamento à esquerda
          children: [
            // Imagem no topo
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                image,
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
            ),
            // Texto na base
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
