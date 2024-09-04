import 'dart:ui';

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final dynamic value; // Pode ser String ou Image
  final Color color;

  const Button({Key? key, required this.value, required this.color})
      : super(key: key);

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
                    color: Colors.white,
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
