import 'package:flutter/material.dart';

import 'cadastro_screen.dart';
import 'login_screen.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/third_page(1).png', height: 410),
        const SizedBox(height: 10),
        const Text(
          'Fácil Comunicação, Segurança em Contratos',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Converse diretamente com profissionais ou clientes antes de fechar o acordo, tire suas dúvidas, combine detalhes.  ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(height: 15),


        // Botão "Cadastrar"
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 118, 150, 255),
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CadastroScreen(),
                ),
              );
            },
            child: Text(
              'Cadastrar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),

        // Botão "Já tem uma conta?"
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          },
          child: Text(
            'Já tem uma conta?',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xFF1D1D1D), // Cor do fundo
          ),
        ),
      ],
    );
  }
}
