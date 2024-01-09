import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({Key? key}) : super(key: key);

  Widget build(context, CheckoutController controller) {
    controller.view = this;
    // * Fun fact: you need to initialize the CartController first, for example open the CartView first.
    // * If You Directly Jump Into CheckoutView. You cannot use the CartController.instance , because it is not initialized yet.
    final cartController = CartController.instance;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text("Cart Items"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = cartController.products[index];
                  double total = item["price"] * item["qty"];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      backgroundImage: NetworkImage(item['photo']),
                    ),
                    title: Text(item["product_name"]),
                    subtitle: Text("QTY : ${item['qty']}  Price: \$${item['price']}"),
                    trailing: Text("\$$total"),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<CheckoutView> createState() => CheckoutController();
}
