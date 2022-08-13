import 'package:flutter/material.dart';
import 'package:fluttp/models/catalog.dart';
import 'package:fluttp/widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  int days = 30;
  String name = "muhib";
  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(
      10,
      (index) => CatalogModel.items[0],
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummylist[index],
            );
          },
        ),
      ),
      drawer: const Mydrawer(),
    );
  }
}
