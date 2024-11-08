import 'package:flutter/material.dart';

import 'cadastro3_screen.dart';

class Cadastro2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFF1D1D1D),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/relierLogo2Bg.png', height: 200), // Substitua pelo seu logo
            const SizedBox(height: 30),
            const Text(
              'Insira seu telefone',
              style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Telefone com DDD',
                hintStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.transparent,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(style: BorderStyle.solid, strokeAlign: BorderSide.strokeAlignOutside, color: Colors.grey)
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF7696FF),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cadastro3Screen(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Continuar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Icon(Icons.arrow_forward_outlined, color: Colors.white,)
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Texto "ou"
            const Text(
              'ou',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 16),

            // Link "Não tem uma conta? Cadastre-se"
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Já tem uma conta?',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                TextButton(
                  onPressed: () {
                    // Ação para cadastro
                  },
                  child: const Text(
                    'Entre',
                    style: TextStyle(
                      color: Color(0xFF7696FF),
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
