import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ProductListController productListController = (ProductListController());
    final Map itemProduct = productListController.products[0];
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: MainTheme.getTheme(),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      // home: const LoginView(),
      // home: const MainNavigationView(),
      // home: ProductDetailView(item: itemProduct),
      // home: const RegisterView(),
      // home: const CartView(),
      // home: const CheckoutView(),
    );
  }
}
