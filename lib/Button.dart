import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String value;
  final Color color;

  const CustomButton({Key? key, required this.value, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Ação quando o botão for clicado
        print('Botão $value clicado');
      },
      child: Container(
        width: 71.75,
        height: 72.0,
        decoration: BoxDecoration(
          color: color, // Cor de fundo recebida como parâmetro
          borderRadius: BorderRadius.circular(24.0), // Arredondamento das bordas
        ),
        child: Center(
          child: Text(
            value,
            style: TextStyle(
              color: Colors.white, // Cor do texto
              fontSize: 24.0,
              decoration: TextDecoration.none, // Sem decoração
            ),
          ),
        ),
      ),
    );
  }
}
