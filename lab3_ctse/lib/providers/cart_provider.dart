import 'package:flutter/material.dart';
import 'package:lab3_ctse/data.dart';

class CartProvider extends ChangeNotifier {
  final Set<Item> _items = {};

  Set<Item> get items => _items;

  double get total =>
      _items.fold(0.0, (previousValue, item) => previousValue + item.price);

  bool isItemAdded(Item item) {
    return _items.contains(item);
  }

  void addItem(Item item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(Item item) {
    _items.remove(item);
    notifyListeners();
  }
}
