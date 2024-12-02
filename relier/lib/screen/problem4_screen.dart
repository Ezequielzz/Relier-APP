import 'package:flutter/material.dart';
import 'problem5_screen.dart';

class Problem4Screen extends StatefulWidget {
  const Problem4Screen({Key? key}) : super(key: key);

  @override
  _Problem4ScreenState createState() => _Problem4ScreenState();
}

class _Problem4ScreenState extends State<Problem4Screen> {
  // Lista de opções
  final List<String> _options = [
    'Nos próximos 7 dias',
    'Nos próximos 14 dias',
    'Nos próximos 30 dias',
    'Não tenho uma data definida',
    'O quanto antes',
  ];

  // Controla a opção selecionada
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F1F1F),
        title: const Text('Encanador'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: const Color(0xFF292929),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Imagem no topo
              Image.asset(
                'assets/images/Calendar-bro(1).png',
                width: 300,
                height: 300,
              ),
              const SizedBox(height: 0),
              // Título
              const Text(
                'Qual o local do serviço?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              // Lista de opções com estilização e animação
              for (String option in _options)
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 6.0, horizontal: 17.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedOption = option;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1F1F1F),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: _selectedOption == option
                              ? const Color(0xFF7696FF)
                              : const Color(0xFF3E3E3E),
                          width: 2,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Texto da opção
                          Expanded(
                            child: AnimatedDefaultTextStyle(
                              duration: const Duration(milliseconds: 300),
                              style: TextStyle(
                                color: _selectedOption == option
                                    ? const Color(0xFF7696FF)
                                    : Colors.white,
                                fontSize: 16,
                              ),
                              child: Text(option),
                            ),
                          ),
                          // Bolinha personalizada com animação
                          CustomRadioButton(
                            isSelected: _selectedOption == option,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              const SizedBox(height: 40),
              // Botão "Continuar ->"
              SizedBox(
                width: 230,
                child: ElevatedButton(
                  onPressed: () {
                    // Navegar para a próxima tela
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Problem5Screen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF7696FF),
                    padding: const EdgeInsets.symmetric(vertical: 22),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text(
                    'Continuar ->',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}

// Widget customizado para o botão de seleção com animação
class CustomRadioButton extends StatelessWidget {
  final bool isSelected;

  const CustomRadioButton({Key? key, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? const Color(0xFF7696FF) : Colors.transparent,
        border: Border.all(
          color: isSelected ? const Color(0xFF7696FF) : const Color(0xFF575757),
          width: 2,
        ),
      ),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: isSelected ? 1 : 0,
        child: const Icon(
          Icons.check,
          color: Colors.white,
          size: 18,
        ),
      ),
    );
  }
}