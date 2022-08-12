import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  int days = 30;
  String name = "muhib";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Text("learning flutter in $days by $name"),
      ),
      drawer: Drawer(),
    );
  }
}
