import 'package:flutter/material.dart';

class TemaCalculadora extends StatelessWidget {
  final bool modoEscuro;
  final VoidCallback alternarTema;

  const TemaCalculadora(
      {super.key, required this.modoEscuro, required this.alternarTema});

  @override
  Widget build(BuildContext contexto) {
    return GestureDetector(
      onTap: alternarTema,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 80,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: modoEscuro ? Colors.grey[850] : Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
              top: 3,
              left: modoEscuro ? 30 : 0,
              right: modoEscuro ? 0 : 30,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: modoEscuro
                    ? const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Center(
                          child: Icon(
                            Icons.nights_stay,
                            color: Colors.blue,
                            size: 24,
                            key: ValueKey('lua'),
                          ),
                        ),
                      )
                    : const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.wb_sunny,
                          color: Colors.blue,
                          size: 24,
                          key: ValueKey('sol'),
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
