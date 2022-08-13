import 'package:flutter/material.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
      );
}
