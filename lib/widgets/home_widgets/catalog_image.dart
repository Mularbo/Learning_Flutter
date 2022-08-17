import 'package:flutter/material.dart';
import 'package:fluttp/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  const CatalogImage({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.color(Mytheme.creamColor).p3.make().p1().w32(context);
  }
}
