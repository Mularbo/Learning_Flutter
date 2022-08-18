import 'package:flutter/material.dart';
import 'package:fluttp/models/catalog.dart';
import 'package:fluttp/pages/home_details_page.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../pages/home_page.dart';
import '../theme.dart';
import 'catalog_image.dart';

class Cataloglist extends StatelessWidget {
  const Cataloglist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: ((context, index) {
        final catalog = CatalogModel.items![index];
        return InkWell(
          onTap: (() => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeDetailPage(catalog: catalog),
                ),
              )),
          child: CatalogItem(catalog: catalog),
        );
      }),
    );
  }
}

class CatalogItem extends StatelessWidget {
  const CatalogItem({
    Key? key,
    required this.catalog,
  }) : super(key: key);
  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(
              catalog.id.toString(),
            ),
            child: CatalogImage(
              image: catalog.image.toString(),
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name!.text.bold.xl.color(Mytheme.darkBluish).make(),
              catalog.desc!.text.textStyle(context.captionStyle).bold.make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Mytheme.darkBluish),
                      shape: MaterialStateProperty.all(
                        StadiumBorder(),
                      ),
                    ),
                    child: "Add to Cart".text.bold.lg.make(),
                  )
                ],
              ).pOnly(right: 8),
            ],
          ))
        ],
      ),
    ).square(135).rounded.white.shadow.make().p8().py8();
  }
}
