import 'package:fluttp/models/catalog.dart';

class CartModel {
  late CatalogModel _catalog;
  //colection of ids
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CartModel newCatalog) {
    _catalog = newCatalog;
  }
  List<Item> get items => _itemIds.map((id) => _catalog.get)
}
