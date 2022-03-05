import 'package:flutter/material.dart';
import 'package:lab3_ctse/screens/cart.dart';

class Home extends StatelessWidget {
  static const String routeName = "/";

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Store"),
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
    );
  }
}
