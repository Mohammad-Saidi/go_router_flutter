


import 'package:flutter/cupertino.dart';

class CartHolder extends ChangeNotifier {

  final cartItems = <String>[];

  void addItem(String item) {
    cartItems.add(item);
    notifyListeners();
  }
  void removeItem(String item) {
    cartItems.remove(item);
    notifyListeners();
  }

  void clear() {
    cartItems.clear();
    notifyListeners();
  }




}