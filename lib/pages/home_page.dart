import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttp/models/catalog.dart';
import 'package:fluttp/widgets/drawer.dart';
import '../widgets/item_widget.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int days = 30;

  String name = "muhib";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogjson =
        await rootBundle.loadString("assets/files/catalogue.json");
    final decodedData = jsonDecode(catalogjson);
    final productsData = decodedData["products"];
  }

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
