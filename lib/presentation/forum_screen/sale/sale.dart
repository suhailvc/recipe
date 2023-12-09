import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:zikrabyte/application/cart_provider/cart_provider.dart';
import 'package:zikrabyte/core/consatnt.dart';
import 'package:zikrabyte/infrastructure/cart/cart.dart';

class SaleScreen extends StatelessWidget {
  const SaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: order.length,
      itemBuilder: (context, index) {
        Map<String, String> currentItem = order[index];
        return Card(
          elevation: 2,
          child: SizedBox(
            height: 90,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage(currentItem['imagePath']!)),
              title: Text(currentItem['name']!),
              subtitle: Text(currentItem['price']!),
              trailing: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Select Quantity'),
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 8),
                            GestureDetector(
                                onTap: () {
                                  Provider.of<CartProvider>(context,
                                          listen: false)
                                      .quantityDecrementProvider();
                                },
                                child: const Icon(Icons.remove, size: 19)),
                            Consumer<CartProvider>(
                                builder: (context, value, child) {
                              return Text(
                                quantity.toString(),
                                style: const TextStyle(fontSize: 14),
                              );
                            }),
                            GestureDetector(
                              onTap: () {
                                Provider.of<CartProvider>(context,
                                        listen: false)
                                    .quantityIncrementProvider();
                              },
                              child: const Icon(
                                Icons.add,
                                size: 19,
                              ),
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Provider.of<CartProvider>(context, listen: false)
                                  .addtoCartProvider(currentItem, context);
                              quantity = 1;
                              Navigator.of(context).pop(); // Close the popup
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Icon(
                  FontAwesomeIcons.cartShopping,
                  size: 19,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
