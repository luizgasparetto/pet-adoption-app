import 'package:flutter/material.dart';

class DefaultTheme {
  static ThemeData getTheme(BuildContext context) {
    return ThemeData(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      primaryColor: const Color.fromRGBO(255, 95, 80, 1),
      primaryColorDark: const Color.fromRGBO(41, 40, 38, 1),
      secondaryHeaderColor: const Color.fromARGB(255, 183, 183, 188),
      dialogBackgroundColor: const Color.fromARGB(255, 223, 223, 227),
      fontFamily: 'Poppins',
      textTheme: const TextTheme(
        headline1: TextStyle(
          color: Color.fromRGBO(52, 57, 61, 1),
          fontWeight: FontWeight.bold,
          fontSize: 34,
          letterSpacing: 0.5,
        ),
        headline2: TextStyle(
          color: Color.fromRGBO(52, 57, 61, 1),
          fontWeight: FontWeight.bold,
          fontSize: 22,
          letterSpacing: 0.5,
        ),
        headline3: TextStyle(
          color: Color.fromRGBO(52, 57, 61, 1),
          fontWeight: FontWeight.bold,
          fontSize: 18,
          letterSpacing: 0.5,
        ),
        headline4: TextStyle(
          color: Color.fromRGBO(52, 57, 61, 0.8),
          fontWeight: FontWeight.bold,
          fontSize: 15,
          letterSpacing: 0.5,
        ),
        headline5: TextStyle(
          color: Color.fromRGBO(52, 57, 61, 1),
          fontSize: 11.5,
          letterSpacing: 0.5,
        ),
        headline6: TextStyle(
          color: Color.fromARGB(255, 198, 195, 195),
          fontWeight: FontWeight.bold,
          fontSize: 11.5,
        ),
      ),
    );
  }
}
