import 'package:flutter/material.dart';

class ServiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF292929), // Cor do fundo
      body: Stack(
        children: [
          Column(
            children: [
              // Cabeçalho
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Text(
                  'Serviços',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Botões de navegação entre abas
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    // Botão "Disponíveis"
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Ação para selecionar "Disponíveis"
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: const Color(0xFF5A5AFF),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              'Disponíveis',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),

                    // Botão "Meus Serviços"
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Ação para selecionar "Meus Serviços"
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: const Color(0xFF1F1F1F),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              'Meus Serviços',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Lista de serviços
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    _buildServiceCard(
                      title: 'Instalação – Encanamento',
                      name: 'Luigi Sousa',
                      distance: '3km',
                      address: '*Endereço*',
                    ),
                    const SizedBox(height: 20),
                    _buildServiceCard(
                      title: 'Instalação de porta – Obras',
                      name: 'Igor Jobs',
                      distance: '5km',
                      address: '*Endereço*',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Método para criar o card de serviço
  Widget _buildServiceCard({
    required String title,
    required String name,
    required String distance,
    required String address,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF1F1F1F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título do serviço
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),

          // Informações do prestador e distância
          Row(
            children: [
              const Icon(
                Icons.person,
                color: Colors.grey,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                name,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.grey,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'A $distance – $address',
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Botão de "Detalhes"
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                // Ação ao clicar em "Detalhes"
              },
              child: Container(
                padding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFF5A5AFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'Detalhes',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 16,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}