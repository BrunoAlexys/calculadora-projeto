
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final dynamic value; // Pode ser String ou Image
  final Color color;
  final bool isDarkMode;

  const Button({super.key, required this.value, required this.color, required this.isDarkMode});

  bool isOperator(String val) {
    return val == '÷' || val == 'x' || val == '-' || val == '+' || val == '=';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Botão $value clicado');
      },
      child: Container(
        width: 71.75,
        height: 72.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Center(
          child: value is String
              ? Text(
                  value,
                  style: TextStyle(
                    color: isOperator(value)
                        ? (isDarkMode ? Colors.white : Colors.white)
                        : (isDarkMode ? Colors.white : Colors.black),
                    fontSize: 24.0,
                    decoration: TextDecoration.none,
                  ),
                )
              : value, // Se for uma imagem, exibe o widget diretamente
        ),
      ),
    );
  }
}
