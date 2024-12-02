import 'package:flutter/material.dart';

class ProblemFinalScreen extends StatelessWidget {
  const ProblemFinalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF292929),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Cabeçalho com logo e botão de fechar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Ícone do logo
                Image.asset(
                  'assets/images/relierLogoBg.png',
                  // Substitua pelo caminho correto
                  width: 80,
                  height: 80,
                ),
                // Botão de fechar
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            const SizedBox(height: 40),
            // Ícone de check grande
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Coluna para o título e texto
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Seu pedido foi enviado!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Iniciamos a busca dos melhores profissionais para você!',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                // Ícone de check grande
                Container(
                  // Ícone do logo
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/checkIcon.png',
                        width: 90,
                        height: 90,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            // Lista de etapas
            // Lista de etapas
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Fique atento em:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Column(
              children: [
                // Etapa 1
                Row(
                  children: [
                    Text(
                      '1',
                      style: TextStyle(
                        color: const Color(0xFF7696FF),
                        // Escolha a cor desejada
                        fontSize: 30,
                        // Tamanho maior para os números
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8), // Espaço entre número e texto
                    Expanded(
                      child: Text(
                        'Tempo de busca',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                // Etapa 2
                Row(
                  children: [
                    Text(
                      '2',
                      style: TextStyle(
                        color: const Color(0xFF7696FF),
                        // Escolha a cor desejada
                        fontSize: 30,
                        // Tamanho maior para os números
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Profissionais encontrados',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      '3',
                      style: TextStyle(
                        color: const Color(0xFF7696FF),
                        // Escolha a cor desejada
                        fontSize: 30,
                        // Tamanho maior para os números
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Contato com o profissional',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      '4',
                      style: TextStyle(
                        color: const Color(0xFF7696FF),
                        // Escolha a cor desejada
                        fontSize: 30,
                        // Tamanho maior para os números
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Negociação e contato',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),

            SizedBox(
              width: 230,
              child: ElevatedButton(
                onPressed: () {
                  // Adicione a ação do botão aqui
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF7696FF),
                  padding: const EdgeInsets.symmetric(vertical: 22),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text(
                  'Acompanhar pedido',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(int number, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text(
            '$number',
            style: const TextStyle(
              color: Color(0xFF7696FF),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 12),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
