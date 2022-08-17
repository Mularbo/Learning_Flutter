// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fluttp/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:fluttp/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);
  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mytheme.creamColor,
      appBar: AppBar(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.bold.xl4.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Mytheme.darkBluish),
                shape: MaterialStateProperty.all(
                  StadiumBorder(),
                ),
              ),
              child: "BUY".text.bold.xl2.make(),
            ).wh(100, 50),
          ],
        ).pOnly(right: 10, left: 10),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(
                catalog.id.toString(),
              ),
              child: Image.network(
                catalog.image.toString(),
              ),
            ).h40(context),
            Expanded(
              child: VxArc(
                height: 20,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name!.text.bold.xl5
                          .color(Mytheme.darkBluish)
                          .make()
                          .p(15),
                      catalog.desc!.text
                          .textStyle(context.captionStyle)
                          .bold
                          .xl
                          .make(),
                      10.heightBox,
                    ],
                  ).py64(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
