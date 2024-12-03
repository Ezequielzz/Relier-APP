import 'package:flutter/material.dart';

class ConversasScreen extends StatelessWidget {
  final List<Map<String, dynamic>> conversas = [
    {
      'nome': 'Robson Ferreira',
      'mensagem': 'Oi, tudo bem?',
      'hora': '12:30',
      'mensagensNaoLidas': 2,
      'avatarUrl': 'https://i.pravatar.cc/300?img=1',
    },
    {
      'nome': 'João Santos',
      'mensagem': 'Enviarei o orçamento agora.',
      'hora': '11:45',
      'mensagensNaoLidas': 0,
      'avatarUrl': 'https://i.pravatar.cc/300?img=2',
    },
    {
      'nome': 'Carlos Oliveira',
      'mensagem': 'Obrigado!',
      'hora': 'Ontem',
      'mensagensNaoLidas': 0,
      'avatarUrl': 'https://i.pravatar.cc/300?img=3',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF292929),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F1F1F),
        title: const Text(
          'Conversas',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: ListView.builder(
        itemCount: conversas.length,
        itemBuilder: (context, index) {
          final conversa = conversas[index];
          return ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: conversa['avatarUrl'] != null
                  ? NetworkImage(conversa['avatarUrl'])
                  : null,
              child: conversa['avatarUrl'] == null
                  ? const Icon(Icons.group, color: Colors.white)
                  : null,
              backgroundColor: Color(0xFF7696FF),
            ),
            title: Text(
              conversa['nome'],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              conversa['mensagem'],
              style: const TextStyle(color: Colors.grey),
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  conversa['hora'],
                  style: TextStyle(
                    color: conversa['mensagensNaoLidas'] > 0
                        ? const Color(0xFF7696FF)
                        : Colors.grey,
                    fontSize: 12,
                  ),
                ),
                if (conversa['mensagensNaoLidas'] > 0)
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Color(0xFF7696FF),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '${conversa['mensagensNaoLidas']}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
              ],
            ),
            onTap: () {
              // Abrir a conversa
              print('Abrir conversa com ${conversa['nome']}');
            },
          );
        },
      ),
    );
  }
}
