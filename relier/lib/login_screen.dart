import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
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
                'assets/images/relierLogo2Bg.png', // Substitua pelo caminho do logotipo
                height: 200,
              ),
              const SizedBox(height: 37),

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
              const SizedBox(height: 8),

              // Link "Esqueceu sua senha?"
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    // Ação para recuperar senha
                  },
                  child: const Text(
                    'Esqueceu sua senha?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Botão "Entrar"
              ElevatedButton(
                onPressed: () {
                  // Ação ao clicar no botão
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF7696FF),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Entrar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
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
                    'Não tem uma conta?',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  TextButton(
                    onPressed: () {
                      // Ação para cadastro
                    },
                    child: const Text(
                      'Cadastre-se',
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
