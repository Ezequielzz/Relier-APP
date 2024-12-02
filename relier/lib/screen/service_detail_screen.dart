import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const ServicesPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Serviços'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Ação para voltar
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Seção de opções (Próximos 7 dias | A 3 minutos de você)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OptionCard(
                  icon: Icons.calendar_today,
                  label: 'Próximos 7 dias',
                ),
                OptionCard(
                  icon: Icons.timer,
                  label: 'A 3 minutos de você',
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Seção de detalhes do serviço
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Instalação – Encanamento',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const DetailRow(
                      question: 'O que você precisa instalar?',
                      answer: 'Pontos de uso (torneiras, vasos sanitários)',
                    ),
                    const DetailRow(
                      question: 'Qual o local do serviço?',
                      answer: 'Casa',
                    ),
                    const DetailRow(
                      question: 'Detalhe o que pretende fazer',
                      answer:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                    ),
                    const DetailRow(
                      question: 'Em que endereço o serviço será realizado?',
                      answer: 'Rua ABC – Bairro DEF, Cidade GHI – 13453-902',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Botão de mensagem
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Ação para enviar mensagem
                },
                icon: const Icon(Icons.send),
                label: const Text('Mensagem'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const OptionCard({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 48,
          color: Colors.blue,
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}

class DetailRow extends StatelessWidget {
  final String question;
  final String answer;

  const DetailRow({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.help_outline,
                size: 18,
                color: Colors.grey,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  question,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 26.0),
            child: Text(
              answer,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
