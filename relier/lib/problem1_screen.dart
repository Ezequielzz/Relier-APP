import 'package:flutter/material.dart';

class Problem1Screen extends StatelessWidget {
  const Problem1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const Problem1Page(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Problem1Page extends StatelessWidget {
  const Problem1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF292929), // Cor do fundo
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F1F1F),
        title: const Text('Encanador'),
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
            const Text(
              'O que você procura?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // Lista de opções
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF1F1F1F),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey[700]!),
              ),
              child: Column(
                children: const [
                  OptionItem(label: 'Conserto e manutenção'),
                  Divider(color: Colors.grey),
                  OptionItem(label: 'Instalação'),
                  Divider(color: Colors.grey),
                  OptionItem(label: 'Outro'),
                  Divider(color: Colors.grey),
                  OptionItem(label: 'Encanamento'),
                  Divider(color: Colors.grey),
                  OptionItem(label: 'Outro'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OptionItem extends StatelessWidget {
  final String label;

  const OptionItem({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: const TextStyle(fontSize: 16),
      ),
      trailing: const Icon(Icons.chevron_right, color: Colors.blue),
      onTap: () {
        // Ação ao clicar no item
      },
    );
  }
}
