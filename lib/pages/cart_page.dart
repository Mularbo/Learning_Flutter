import 'package:flutter/material.dart';
import 'package:fluttp/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mytheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.align(TextAlign.center).make(),
      ),
      body: Column(
        children: [
          Placeholder().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9999".text.xl4.make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Mytheme.darkBluish),
            ),
            child: "Buy".text.size(20).make(),
          ).w32(context),
        ],
      ),
    );
  }
}

class _Cartliststate extends StatefulWidget {
  const _Cartliststate({super.key});

  @override
  State<_Cartliststate> createState() => __CartliststateState();
}

class __CartliststateState extends State<_Cartliststate> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done_all_outlined),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () {},
        ),
      ),
    );
  }
}
