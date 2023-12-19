import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import '../controller/cart_controller.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  Widget build(context, CartController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<CartView> createState() => CartController();
}
