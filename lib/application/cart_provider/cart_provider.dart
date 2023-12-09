import 'package:flutter/material.dart';
import 'package:zikrabyte/infrastructure/cart/cart.dart';

class CartProvider extends ChangeNotifier {
  addtoCartProvider(Map<String, String> item, context) {
    addtoCart(item, context);
    notifyListeners();
  }

  quantityIncrementProvider() {
    quantityIncrement();
    notifyListeners();
  }

  quantityDecrementProvider() {
    quantityDecrement();
    notifyListeners();
  }
}
