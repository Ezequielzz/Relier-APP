import 'package:flutter/material.dart';

class AgendamentoScreen extends StatefulWidget {
  @override
  _AgendamentoScreenState createState() => _AgendamentoScreenState();
}

class _AgendamentoScreenState extends State<AgendamentoScreen> {
  String selectedSection =
      'Em progresso'; // Pode ser "Em progresso", "Concluídas", ou "Pendentes"

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
                width: 350, // Ajustar para acomodar os três botões
                height: 45, // Altura do botão
                decoration: BoxDecoration(
                  color: const Color(0xFF1F1F1F),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Stack(
                  children: [
                    // Botão animado (azul)
                    AnimatedAlign(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      alignment: selectedSection == 'Em progresso'
                          ? Alignment.centerLeft
                          : selectedSection == 'Pendentes'
                              ? Alignment.center
                              : Alignment.centerRight,
                      child: Container(
                        width: 116, // Ajustado para três seções
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color(0xFF7696FF),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    // Textos (Em progresso, Pendentes e Concluídas)
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSection = 'Em progresso';
                              });
                            },
                            child: Center(
                              child: Text(
                                'Em progresso',
                                style: TextStyle(
                                  color: selectedSection == 'Em progresso'
                                      ? Colors.white
                                      : Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSection = 'Pendentes';
                              });
                            },
                            child: Center(
                              child: Text(
                                'Pendentes',
                                style: TextStyle(
                                  color: selectedSection == 'Pendentes'
                                      ? Colors.white
                                      : Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSection = 'Concluídas';
                              });
                            },
                            child: Center(
                              child: Text(
                                'Concluídas',
                                style: TextStyle(
                                  color: selectedSection == 'Concluídas'
                                      ? Colors.white
                                      : Colors.grey,
                                  fontSize: 14,
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
            // Conteúdo das seções
            Expanded(
              child: Center(
                child: selectedSection == 'Em progresso'
                    ? const Text(
                        'Conteúdo de "Em progresso"',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    : selectedSection == 'Pendentes'
                        ? const Text(
                            'Conteúdo de "Pendentes"',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        : const Text(
                            'Conteúdo de "Concluídas"',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
              ),
            ),
          ],
        ),
      ),
    );
  }
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
      children: [
        // Linha principal: informações e data
        Row(
          children: [
            // Informações principais
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Instalação de ponto de uso',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Seu agendamento em *Endereço* foi realizado com sucesso',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            // Ícone de data
            Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                  height: 75,
                  decoration: BoxDecoration(
                    color: const Color(0xFF7696FF),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Column(
                    children: [
                      Text(
                        'Nov',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '22',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        // Botão com o ícone de chat
        Align(
          alignment: Alignment.center, // Centralizado
          child: ElevatedButton(
            onPressed: () {
              // Ação do botão
              print('Botão de chat clicado');
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: const Color(0xFF7A7A7A)),
                borderRadius: BorderRadius.circular(40),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 16),
              backgroundColor: const Color(0xFF292929),
              elevation: 0, // Remove sombra
            ),
            child: const Icon(
              Icons.chat_bubble_outline,
              color: Colors.grey,
              size: 24,
            ),
          ),
        ),
      ],
    ),
  );
}
