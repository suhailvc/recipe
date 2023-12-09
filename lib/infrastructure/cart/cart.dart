import 'package:flutter/material.dart';
import 'package:zikrabyte/domain/cart_model/cart_model.dart';
import 'package:zikrabyte/presentation/forum_screen/widget/alertDialog.dart';
import 'package:zikrabyte/presentation/widgets/warning.dart';

List<CartModel> cartList = [];
int quantity = 1;
addtoCart(Map<String, String> item, context) {
  var cost = int.tryParse(item['price'] ?? '0');
  CartModel cartModel = CartModel(
    id: item['id'] ?? '',
    quantity: quantity,
    name: item['name'] ?? 'Name',
    image: item['imagePath'] ?? 'image',
    totalPrice: cost! * quantity,
  );
  if (!cartList.any((item) => item.id == cartModel.id)) {
    cartList.add(cartModel);
    // customAlertDialog('Added to cart', context);
  } else {
    //customAlertDialog('Already Added', context);
  }
}

quantityIncrement() {
  quantity++;
}

quantityDecrement() {
  if (quantity > 1) {
    quantity--;
  }
}
