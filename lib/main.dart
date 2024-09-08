import 'package:calculadora_projeto/botao.dart';
import 'package:calculadora_projeto/tema_calculadora.dart';
import 'package:calculadora_projeto/calcular_logica.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatefulWidget {
  const MeuApp({super.key});

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  bool modoEscuro = false;

  void alterarTema() {
    setState(() {
      modoEscuro = !modoEscuro;
    });
  }

  @override
  Widget build(BuildContext contexto) {
    return MaterialApp(
      title: 'Demo Flutter',
      theme: modoEscuro ? ThemeData.dark() : ThemeData.light(),
      home: Calculadora(modoEscuro: modoEscuro, alternarTema: alterarTema),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Calculadora extends StatefulWidget {
  final bool modoEscuro;
  final VoidCallback alternarTema;

  const Calculadora(
      {super.key, required this.modoEscuro, required this.alternarTema});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final LogicaCalculadora _logicaCalculadora = LogicaCalculadora();

  void _aoPressionarBotao(String valor) {
    setState(() {
      _logicaCalculadora.aoPressionarBotao(valor);
    });
  }

  @override
  Widget build(BuildContext contexto) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: widget.modoEscuro
                  ? const Color(0xFF17171C)
                  : Color(0xFFF1F2F3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: TemaCalculadora(
                          modoEscuro: widget.modoEscuro,
                          alternarTema: widget.alternarTema,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 16.0),
                            child: Text(
                              _logicaCalculadora.operacaoAnterior.isNotEmpty
                                  ? _logicaCalculadora.operacaoAnterior
                                  : '0',
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 24.0,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Text(
                          _logicaCalculadora.resultado.isNotEmpty
                              ? _logicaCalculadora.resultado
                              : '0',
                          style: TextStyle(
                            color:
                                widget.modoEscuro ? Colors.white : Colors.black,
                            fontSize: 38.0,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: widget.modoEscuro
                  ? const Color(0xFF17171C)
                  : Color(0xFFF1F2F3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Botao(
                          valor: 'C',
                          aoPressionar: _aoPressionarBotao,
                          cor: widget.modoEscuro
                              ? const Color(0xFF4E505F)
                              : const Color(0xFFD2D3DA),
                          modoEscuro: widget.modoEscuro),
                      Botao(
                          valor: '+/-',
                          imagem: widget.modoEscuro
                              ? Image.asset(
                                  'assets/images/value.png',
                                  width: 24,
                                  height: 24,
                                )
                              : Image.asset(
                                  'assets/images/union-black.png',
                                  width: 24,
                                  height: 24,
                                ),
                          aoPressionar: _aoPressionarBotao,
                          cor: widget.modoEscuro
                              ? const Color(0xFF4E505F)
                              : const Color(0xFFD2D3DA),
                          modoEscuro: widget.modoEscuro),
                      Botao(
                          valor: '%',
                          aoPressionar: _aoPressionarBotao,
                          cor: widget.modoEscuro
                              ? const Color(0xFF4E505F)
                              : const Color(0xFFD2D3DA),
                          modoEscuro: widget.modoEscuro),
                      Botao(
                          valor: '÷',
                          aoPressionar: _aoPressionarBotao,
                          cor: const Color(0xFF4B5EFC),
                          modoEscuro: widget.modoEscuro),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Botao(
                          valor: '7',
                          aoPressionar: _aoPressionarBotao,
                          cor: widget.modoEscuro
                              ? const Color(0xFF333640)
                              : Colors.white,
                          modoEscuro: widget.modoEscuro),
                      Botao(
                          valor: '8',
                          aoPressionar: _aoPressionarBotao,
                          cor: widget.modoEscuro
                              ? const Color(0xFF333640)
                              : Colors.white,
                          modoEscuro: widget.modoEscuro),
                      Botao(
                          valor: '9',
                          aoPressionar: _aoPressionarBotao,
                          cor: widget.modoEscuro
                              ? const Color(0xFF333640)
                              : Colors.white,
                          modoEscuro: widget.modoEscuro),
                      Botao(
                          valor: 'x',
                          aoPressionar: _aoPressionarBotao,
                          cor: const Color(0xFF4B5EFC),
                          modoEscuro: widget.modoEscuro),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Botao(
                          valor: '4',
                          aoPressionar: _aoPressionarBotao,
                          cor: widget.modoEscuro
                              ? const Color(0xFF333640)
                              : Colors.white,
                          modoEscuro: widget.modoEscuro),
                      Botao(
                          valor: '5',
                          aoPressionar: _aoPressionarBotao,
                          cor: widget.modoEscuro
                              ? const Color(0xFF333640)
                              : Colors.white,
                          modoEscuro: widget.modoEscuro),
                      Botao(
                          valor: '6',
                          aoPressionar: _aoPressionarBotao,
                          cor: widget.modoEscuro
                              ? const Color(0xFF333640)
                              : Colors.white,
                          modoEscuro: widget.modoEscuro),
                      Botao(
                          valor: '-',
                          aoPressionar: _aoPressionarBotao,
                          cor: const Color(0xFF4B5EFC),
                          modoEscuro: widget.modoEscuro),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Botao(
                          valor: '1',
                          aoPressionar: _aoPressionarBotao,
                          cor: widget.modoEscuro
                              ? const Color(0xFF333640)
                              : Colors.white,
                          modoEscuro: widget.modoEscuro),
                      Botao(
                          valor: '2',
                          aoPressionar: _aoPressionarBotao,
                          cor: widget.modoEscuro
                              ? const Color(0xFF333640)
                              : Colors.white,
                          modoEscuro: widget.modoEscuro),
                      Botao(
                          valor: '3',
                          aoPressionar: _aoPressionarBotao,
                          cor: widget.modoEscuro
                              ? const Color(0xFF333640)
                              : Colors.white,
                          modoEscuro: widget.modoEscuro),
                      Botao(
                          valor: '+',
                          aoPressionar: _aoPressionarBotao,
                          cor: const Color(0xFF4B5EFC),
                          modoEscuro: widget.modoEscuro),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Botao(
                          valor: '.',
                          aoPressionar: _aoPressionarBotao,
                          cor: widget.modoEscuro
                              ? const Color(0xFF333640)
                              : Colors.white,
                          modoEscuro: widget.modoEscuro),
                      Botao(
                          valor: '0',
                          aoPressionar: _aoPressionarBotao,
                          cor: widget.modoEscuro
                              ? const Color(0xFF333640)
                              : Colors.white,
                          modoEscuro: widget.modoEscuro),
                      Botao(
                          valor: 'delete',
                          imagem: widget.modoEscuro
                              ? Image.asset(
                                  'assets/images/delete.png',
                                  width: 24,
                                  height: 24,
                                )
                              : Image.asset(
                                  'assets/images/delete-black.png',
                                  width: 24,
                                  height: 24,
                                ),
                          aoPressionar: _aoPressionarBotao,
                          cor: widget.modoEscuro
                              ? const Color(0xFF333640)
                              : Colors.white,
                          modoEscuro: widget.modoEscuro),
                      Botao(
                          valor: '=',
                          aoPressionar: _aoPressionarBotao,
                          cor: const Color(0xFF4B5EFC),
                          modoEscuro: widget.modoEscuro),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
