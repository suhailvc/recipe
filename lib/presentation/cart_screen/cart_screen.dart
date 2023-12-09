import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:zikrabyte/application/cart_provider/cart_provider.dart';
import 'package:zikrabyte/infrastructure/cart/cart.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final razorpay = Razorpay();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, errorCallback);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, externalWalletCallback);
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) async {
    cartList.clear();
  }

  void errorCallback(PaymentFailureResponse response) {}

  void externalWalletCallback(ExternalWalletResponse response) {}
  @override
  Widget build(BuildContext context) {
    int totalAmount = 0;
    for (var cartItem in cartList) {
      totalAmount += cartItem.totalPrice;
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Cart",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartList.length,
              itemBuilder: (context, index) {
                return Consumer<CartProvider>(builder: (context, value, child) {
                  return Card(
                    elevation: 2,
                    child: SizedBox(
                      height: 90,
                      child: ListTile(
                        leading: CircleAvatar(
                            backgroundImage: AssetImage(cartList[index].image)),
                        title: Text(cartList[index].name),
                        subtitle: Text(cartList[index].totalPrice.toString()),
                        trailing: Text(
                          cartList[index].quantity.toString(),
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  );
                });
              },
            ),
          ),
          ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color(0xFF86BF3E)),
            ),
            onPressed: () {
              var options = {
                'key': 'rzp_test_ESaJeRtOUFPAcN',
                'amount': totalAmount * 100,
                'currency': 'INR',
                'name': 'Food Order',
                'description': 'suhail',
                'prefill': {
                  'contact': '9898989898',
                  'email': 'aromalskumar97148@gmail.com'
                },
              };
              razorpay.open(options);
            },
            child: Center(
              child: Text(
                'Pay  $totalAmount',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    razorpay.clear();
    super.dispose();
  }
}
