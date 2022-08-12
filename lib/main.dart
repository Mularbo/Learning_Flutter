import 'package:flutter/material.dart';
import 'package:fluttp/pages/home_page.dart';
import 'package:fluttp/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // darkTheme: ThemeData(
      // brightness: Brightness.dark,
      initialRoute: "/home",
      routes: {
        "/": (context) => const LoginPage(),
        "/Home": (context) => HomePage(),
      },
    );
  }
}
