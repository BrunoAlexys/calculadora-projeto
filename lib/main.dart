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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Calculadora(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

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
              color: Color(0xFF17171C),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: ThemeCalculator(),
                      )
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
                              color: Colors.white,
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
              color: Color(0xFF17171C),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(value: 'C', color: Color(0xFF4E505F)),
                      Button(
                        value: Image.asset(
                          'assets/images/value.png',
                          width: 24,
                          height: 24,
                        ),
                        color: Color(0xFF4E505F),
                      ),
                      Button(value: '%', color: Color(0xFF4E505F)),
                      Button(value: '÷', color: Color(0xFF4B5EFC)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(value: '7', color: Color(0xFF333640)),
                      Button(value: '8', color: Color(0xFF333640)),
                      Button(value: '9', color: Color(0xFF333640)),
                      Button(value: 'x', color: Color(0xFF4B5EFC)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(value: '4', color: Color(0xFF333640)),
                      Button(value: '5', color: Color(0xFF333640)),
                      Button(value: '6', color: Color(0xFF333640)),
                      Button(value: '-', color: Color(0xFF4B5EFC)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(value: '1', color: Color(0xFF333640)),
                      Button(value: '2', color: Color(0xFF333640)),
                      Button(value: '3', color: Color(0xFF333640)),
                      Button(value: '+', color: Color(0xFF4B5EFC)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(value: '.', color: Color(0xFF333640)),
                      Button(value: '0', color: Color(0xFF333640)),
                      Button(
                        value: Image.asset(
                          'assets/images/delete.png',
                          width: 24,
                          height: 24,
                        ),
                        color: Color(0xFF333640),
                      ),
                      Button(value: '=', color: Color(0xFF4B5EFC)),
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
