import 'package:flutter/material.dart';
import 'package:lab3_ctse/data.dart';
import 'package:lab3_ctse/providers/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class Cart extends StatelessWidget {
  static const String routeName = "/cart";

  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Set<Item> items = Provider.of<CartProvider>(context).items;

    final currencyFormatter = NumberFormat.currency(name: 'LKR ');
    String formattedTotal =
        currencyFormatter.format(Provider.of<CartProvider>(context).total);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Cart"),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 8,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                Item item = items.elementAt(index);
                return Card(
                  elevation: 2,
                  child: ListTile(
                    title: Text(item.name),
                    subtitle:
                        Text(currencyFormatter.format(item.price).toString()),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        Provider.of<CartProvider>(
                          context,
                          listen: false,
                        ).removeItem(item);
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.amber,
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    formattedTotal,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
