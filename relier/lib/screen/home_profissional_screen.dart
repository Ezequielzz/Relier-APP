import 'package:flutter/material.dart';
import 'package:relier/screen/detalhe_service_screen.dart';

class HomeProfissionalScreen extends StatefulWidget {
  @override
  _HomeProfissionalState createState() => _HomeProfissionalState();
}

class _HomeProfissionalState extends State<HomeProfissionalScreen> {
  bool isProgressSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF292929),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Center(
              child: const Text(
                'Meus Agendamentos',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Botões de alternância
            Center(
              child: Container(
                width: 300, // Largura total do botão
                height: 45, // Altura do botão
                decoration: BoxDecoration(
                  color: const Color(0xFF1F1F1F),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Stack(
                  children: [
                    // Botão animado (azul)
                    AnimatedAlign(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      alignment: isProgressSelected
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Container(
                        width: 150, // Metade da largura do botão pai
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFF7696FF),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    // Textos (Em progresso e Concluídas)
                    Row(
                      children: [
                        // Texto "Em progresso"
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isProgressSelected = true;
                              });
                            },
                            child: Center(
                              child: Text(
                                'Em progresso',
                                style: TextStyle(
                                  color: isProgressSelected
                                      ? Colors.white
                                      : Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Texto "Concluídas"
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isProgressSelected = false;
                              });
                            },
                            child: Center(
                              child: Text(
                                'Concluídas',
                                style: TextStyle(
                                  color: isProgressSelected
                                      ? Colors.grey
                                      : Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Lógica simples de consumo da lista
            // Depois será necessário consumir a lista de concluidas e em progresso
            // Lista de cards
             Expanded(
               child: ListView.builder(
                 itemCount: 2, // Número de agendamentos (pode ser dinâmico)
                 itemBuilder: (context, index) {
                   return _buildAgendamentoCard();
                 },
               ),
             ),
            // Expanded(
            //   child: Center(
            //     child: isProgressSelected
            //         ? const Text(
            //       'Disponíveis"',
            //       style: TextStyle(color: Colors.white, fontSize: 16),
            //     )
            //         : const Text(
            //       'Meus Serviços"',
            //       style: TextStyle(color: Colors.white, fontSize: 16),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildToggleButton({
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF7696FF) : const Color(0xFF1F1F1F),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildAgendamentoCard() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1F1F1F),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título do serviço
          const Text(
            'Instalação de porta – Obras',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          // Informações principais (Ícone + texto)
          Row(
            children: [
              const Icon(
                Icons.person,
                color: Colors.grey,
                size: 40,
              ),
              const SizedBox(width: 8),
              const Text(
                'Igor Jobs',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.grey,
                size: 40,
              ),
              const SizedBox(width: 8),
              const Text(
                'A 5km – *Endereço*',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Botão de detalhes
          Center(
            child: ElevatedButton(
              onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetalheServiceScreen(),
                    ),
                  );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF7696FF), // Cor de fundo azul
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min, // Ajusta o tamanho ao conteúdo
                children: const [
                  Text(
                    'Detalhes',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
