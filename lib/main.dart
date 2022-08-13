import 'package:flutter/material.dart';
import 'package:fluttp/pages/home_page.dart';
import 'package:fluttp/pages/login_page.dart';
import 'package:fluttp/utilities/routes.dart';
import 'package:fluttp/widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
  }
}
