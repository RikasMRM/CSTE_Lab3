import 'package:flutter/material.dart';
import 'package:lab3_ctse/components/item_tile.dart';
import 'package:lab3_ctse/data.dart';
import 'package:lab3_ctse/screens/cart.dart';

class Home extends StatelessWidget {
  static const String routeName = "/";

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Stor"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Cart.routeName);
            },
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: storeItems.length,
            itemBuilder: (context, index) {
              return ItemTile(item: storeItems.elementAt(index));
            }),
      ),
    );
  }
}
