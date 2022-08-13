class CatalogModel {
  static final items = [
    Item(
      id: 0001,
      name: "iphone 12 pro",
      desc: "Apple Iphone 12th gen",
      price: 999,
      color: "#33505",
      image:
          "https://media.istockphoto.com/photos/studio-shot-of-brand-new-apple-iphone-12-mini-blue-rear-view-on-the-picture-id1288681553?k=20&m=1288681553&s=612x612&w=0&h=RjB7BmeIp2i0Rnuw3Skr8r9KlrI-Ao2tfiRlkFfGt2s=",
    ),
  ];
}

class Item {
  final int? id;
  final String? name;
  final String? desc;
  final num? price;
  final String? color;
  final String? image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}
