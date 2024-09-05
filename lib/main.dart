import 'package:calculadora_projeto/Button.dart';
import 'package:calculadora_projeto/ThemeCalculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void changeTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Calculadora(isDarkMode: isDarkMode, toggleTheme: changeTheme),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Calculadora extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback toggleTheme;

  const Calculadora(
      {super.key, required this.isDarkMode, required this.toggleTheme});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              color: widget.isDarkMode ? const Color(0xFF17171C) : Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: ThemeCalculator(
                          isDarkMode: widget.isDarkMode,
                          toggleTheme: widget.toggleTheme,
                        ),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            '0',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 24.0,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            '0',
                            style: TextStyle(
                              color: widget.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 48.0,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
        Expanded(
            flex: 2,
            child: Container(
              color: widget.isDarkMode ? const Color(0xFF17171C) : Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(
                          value: 'C',
                          color: widget.isDarkMode
                              ? const Color(0xFF4E505F)
                              : const Color(322323332),
                          isDarkMode: widget.isDarkMode),
                      Button(
                          value: Image.asset(
                            'assets/images/value.png',
                            width: 24,
                            height: 24,
                          ),
                          color: widget.isDarkMode
                              ? const Color(0xFF4E505F)
                              : const Color(322323332),
                          isDarkMode: widget.isDarkMode),
                      Button(
                          value: '%',
                          color: widget.isDarkMode
                              ? const Color(0xFF4E505F)
                              : const Color(322323332),
                          isDarkMode: widget.isDarkMode),
                      Button(
                          value: '÷',
                          color: const Color(0xFF4B5EFC),
                          isDarkMode: widget.isDarkMode),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(
                          value: '7',
                          color: widget.isDarkMode
                              ? const Color(0xFF333640)
                              : Colors.white,
                          isDarkMode: widget.isDarkMode),
                      Button(
                          value: '8',
                          color: widget.isDarkMode
                              ? const Color(0xFF333640)
                              : Colors.white,
                          isDarkMode: widget.isDarkMode),
                      Button(
                          value: '9',
                          color: widget.isDarkMode
                              ? const Color(0xFF333640)
                              : Colors.white,
                          isDarkMode: widget.isDarkMode),
                      Button(
                          value: 'x',
                          color: const Color(0xFF4B5EFC),
                          isDarkMode: widget.isDarkMode),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(
                          value: '4',
                          color: widget.isDarkMode
                              ? const Color(0xFF333640)
                              : Colors.white,
                          isDarkMode: widget.isDarkMode),
                      Button(
                          value: '5',
                          color: widget.isDarkMode
                              ? const Color(0xFF333640)
                              : Colors.white,
                          isDarkMode: widget.isDarkMode),
                      Button(
                          value: '6',
                          color: widget.isDarkMode
                              ? const Color(0xFF333640)
                              : Colors.white,
                          isDarkMode: widget.isDarkMode),
                      Button(
                          value: '-',
                          color: const Color(0xFF4B5EFC),
                          isDarkMode: widget.isDarkMode),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(
                          value: '1',
                          color: widget.isDarkMode
                              ? const Color(0xFF333640)
                              : Colors.white,
                          isDarkMode: widget.isDarkMode),
                      Button(
                          value: '2',
                          color: widget.isDarkMode
                              ? const Color(0xFF333640)
                              : Colors.white,
                          isDarkMode: widget.isDarkMode),
                      Button(
                          value: '3',
                          color: widget.isDarkMode
                              ? const Color(0xFF333640)
                              : Colors.white,
                          isDarkMode: widget.isDarkMode),
                      Button(
                          value: '+',
                          color: const Color(0xFF4B5EFC),
                          isDarkMode: widget.isDarkMode),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(
                          value: '.',
                          color: widget.isDarkMode
                              ? const Color(0xFF333640)
                              : Colors.white,
                          isDarkMode: widget.isDarkMode),
                      Button(
                          value: '0',
                          color: widget.isDarkMode
                              ? const Color(0xFF333640)
                              : Colors.white,
                          isDarkMode: widget.isDarkMode),
                      Button(
                          value: Image.asset(
                            'assets/images/delete.png',
                            width: 24,
                            height: 24,
                          ),
                          color: widget.isDarkMode
                              ? const Color(0xFF333640)
                              : Colors.white,
                          isDarkMode: widget.isDarkMode),
                      Button(
                          value: '=',
                          color: const Color(0xFF4B5EFC),
                          isDarkMode: widget.isDarkMode),
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
