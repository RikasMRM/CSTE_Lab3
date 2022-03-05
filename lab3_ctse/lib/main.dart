import 'package:flutter/material.dart';
import 'package:lab3_ctse/screens/cart.dart';
import 'package:lab3_ctse/screens/home.dart';
import 'package:provider/provider.dart';
import 'package:lab3_ctse/providers/cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'My Store',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        initialRoute: Home.routeName,
        routes: {
          Home.routeName: (context) => Home(),
          Cart.routeName: (context) => Cart(),
        },
      ),
    );
  }
}
