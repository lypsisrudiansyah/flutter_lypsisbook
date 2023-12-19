import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';

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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5.0,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Colors.grey[300]!,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.blueGrey[900],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 42,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryDarkerColor,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Expanded(
                              child: Text("Filter 1"),
                            ),
                            Icon(
                              Icons.tune,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: SizedBox(
                      height: 42,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryDarkerColor,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Expanded(
                              child: Text("Filter 1"),
                            ),
                            Icon(
                              Icons.tune,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CartView> createState() => CartController();
}
