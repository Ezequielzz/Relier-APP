import 'package:flutter/material.dart';

import 'cadastro_screen.dart';
import 'login_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/first_page(1).png', height: 410),
        const SizedBox(height: 20),
        const Text(
          'Qualidade e confiança em cada serviço',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            'Conectamos você aos melhores profissionais, oferecendo informações claras, avaliações e segurança para contratar com tranquilidade.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
