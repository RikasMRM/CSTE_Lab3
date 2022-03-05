import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  static const String routeName = "/cart";

  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cart"),
      ),
    );
  }
}
