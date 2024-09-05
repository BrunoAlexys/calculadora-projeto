import 'package:flutter/material.dart';

class ThemeCalculator extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback toggleTheme;

  const ThemeCalculator(
      {super.key, required this.isDarkMode, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleTheme,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 80,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isDarkMode ? Colors.grey[850] : Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
              top: 3,
              left: isDarkMode ? 30 : 0,
              right: isDarkMode ? 0 : 30,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: isDarkMode
                    ? const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Center(
                          child: Icon(
                            Icons.nights_stay,
                            color: Colors.blue,
                            size: 24,
                            key: ValueKey('moon'),
                          ),
                        ),
                      )
                    : const Padding(
                        padding: EdgeInsets.all(4.0),
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
