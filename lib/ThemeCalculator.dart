import 'package:flutter/material.dart';

class ThemeCalculator extends StatefulWidget {
  @override
  _ThemeCalculatorState createState() => _ThemeCalculatorState();
}

class _ThemeCalculatorState extends State<ThemeCalculator> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isDarkMode = !isDarkMode;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: 80,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isDarkMode ? Colors.grey[850] : Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
              top: 3,
              left: isDarkMode ? 30 : 0,
              right: isDarkMode ? 0 : 30,
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                child: isDarkMode
                    ? Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Center(
                          child: Icon(
                            Icons.nights_stay,
                            color: Colors.blue,
                            size: 24,
                            key: ValueKey('moon'),
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.wb_sunny,
                          color: Colors.blue,
                          size: 24,
                          key: ValueKey('sun'),
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
