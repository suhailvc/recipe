import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zikrabyte/application/cart_provider/cart_provider.dart';
import 'package:zikrabyte/presentation/splash_screen/spalsh_sceeen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        )
      ],
      child:const MaterialApp(
        home:  SplashScreen(),
      ),
    );
  }
}
