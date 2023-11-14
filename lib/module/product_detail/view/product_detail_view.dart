
import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import '../controller/product_detail_controller.dart';

class ProductDetailView extends StatefulWidget {
    const ProductDetailView({Key? key}) : super(key: key);

    Widget build(context, ProductDetailController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("ProductDetail"),
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
    State<ProductDetailView> createState() => ProductDetailController();
}
    