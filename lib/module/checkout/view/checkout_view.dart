
import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import '../controller/checkout_controller.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({Key? key}) : super(key: key);

  Widget build(context, CheckoutController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
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
  State<CheckoutView> createState() => CheckoutController();
}
    