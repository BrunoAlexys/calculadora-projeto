import 'package:calculadora_projeto/Button.dart';
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
  bool isDarkTheme = true;

  void toggleTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      home: Calculadora(onThemeChanged: toggleTheme, isDarkTheme: isDarkTheme),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Calculadora extends StatefulWidget {
  final Function onThemeChanged;
  final bool isDarkTheme;

  const Calculadora({required this.onThemeChanged, required this.isDarkTheme, super.key});

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
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                      IconButton(
                        icon: Icon(widget.isDarkTheme ? Icons.nights_stay : Icons.wb_sunny),
                        color: Colors.white,
                        onPressed: () {
                          widget.onThemeChanged();
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: FittedBox(
                          fit:  BoxFit.scaleDown,
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
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(value: 'C', color: Color(0xFF4E505F)),
                      CustomButton(value: '+/-', color: Color(0xFF4E505F)),
                      CustomButton(value: '%', color: Color(0xFF4E505F)),
                      CustomButton(value: '/', color: Color(0xFF4B5EFC)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(value: '7', color: Color(0xFF333640)),
                      CustomButton(value: '8', color: Color(0xFF333640)),
                      CustomButton(value: '9', color: Color(0xFF333640)),
                      CustomButton(value: 'x', color: Color(0xFF4B5EFC)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(value: '4', color: Color(0xFF333640)),
                      CustomButton(value: '5', color: Color(0xFF333640)),
                      CustomButton(value: '6', color: Color(0xFF333640)),
                      CustomButton(value: '-', color: Color(0xFF4B5EFC)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(value: '1', color: Color(0xFF333640)),
                      CustomButton(value: '2', color: Color(0xFF333640)),
                      CustomButton(value: '3', color: Color(0xFF333640)),
                      CustomButton(value: '+', color: Color(0xFF4B5EFC)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(value: '.', color: Color(0xFF333640)),
                      CustomButton(value: '0', color: Color(0xFF333640)),
                      CustomButton(value: '<=', color: Color(0xFF333640)),
                      CustomButton(value: '=', color: Color(0xFF4B5EFC)),
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
