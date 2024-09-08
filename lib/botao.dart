import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String valor;
  final Widget? imagem;
  final Color cor;
  final bool modoEscuro;
  final void Function(String) aoPressionar;

  const Botao(
      {super.key,
      required this.valor,
      required this.cor,
      required this.modoEscuro,
      required this.aoPressionar,
      this.imagem});

  bool eOperador(String val) {
    return val == '÷' || val == 'x' || val == '-' || val == '+' || val == '=';
  }

  @override
  Widget build(BuildContext contexto) {
    return GestureDetector(
      onTap: () {
        if (imagem == null) {
          aoPressionar(valor);
        } else {
          aoPressionar(valor);
        }
      },
      child: Container(
        width: 71.75,
        height: 72.0,
        decoration: BoxDecoration(
          color: cor,
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Center(
            child: imagem != null
                ? imagem!
                : Text(
                    valor,
                    style: TextStyle(
                      color: eOperador(valor)
                          ? Colors.white
                          : (modoEscuro ? Colors.white : Colors.black),
                      fontSize: 24.0,
                      decoration: TextDecoration.none,
                    ),
                  )),
      ),
    );
  }
}
