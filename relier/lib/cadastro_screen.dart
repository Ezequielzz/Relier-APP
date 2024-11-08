import 'package:flutter/material.dart';

import 'cadastro2_screen.dart';

class CadastroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D1D1D), // Cor do fundo
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logotipo
              Image.asset(
                'assets/images/relierLogo2Bg.png', height: 200),
              const SizedBox(height: 20),
              const Text(
                'Confirme seu telefone',
                style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              // Campo de Nome
              TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Nome',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.transparent,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(style: BorderStyle.solid, strokeAlign: BorderSide.strokeAlignOutside, color: Colors.grey)
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Campo de CPF
              TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'CPF',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.transparent,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(style: BorderStyle.solid, strokeAlign: BorderSide.strokeAlignOutside, color: Colors.grey)
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Campo de Email
              TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.transparent,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(style: BorderStyle.solid, strokeAlign: BorderSide.strokeAlignOutside, color: Colors.grey)
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Campo de Senha
              TextField(
                style: const TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Senha',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.transparent,
                  suffixIcon: Icon(Icons.visibility, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(style: BorderStyle.solid, strokeAlign: BorderSide.strokeAlignOutside, color: Colors.grey)
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Campo de Confirmar senha
              TextField(
                style: const TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Confirmar senha',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.transparent,
                  suffixIcon: Icon(Icons.visibility, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(style: BorderStyle.solid, strokeAlign: BorderSide.strokeAlignOutside, color: Colors.grey)
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Botão "Cadastrar"
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Cadastro2Screen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF7696FF),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
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
              const SizedBox(height: 16),

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
      ),
    );
  }
}
