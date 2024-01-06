// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import 'package:flutter_lypsisbook/module/cart/controller/cart_controller.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CartProductListView extends StatelessWidget {
  const CartProductListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = CartController.instance;

    return Expanded(
      child: ListView.builder(
        itemCount: controller.products.length,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          Map theItem = controller.products[index];
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 12.0),
                height: 76.0,
                width: 76.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      theItem['photo'] ??
                          'https://png.pngtree.com/png-vector/20190820/ourmid/pngtree-no-image-vector-illustration-isolated-png-image_1694547.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      theItem['product_name'] ?? '-',
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      theItem['category'] ?? '-',
                      style: const TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      "\$${theItem['price']}",
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              // * Quantity Feature #1 : Using Wrap, doesnt need to set the width, but tricky for children widget like text(with widget center) qty we need to set the width and height
              Wrap(
                children: [
                  IconButton(
                    onPressed: () => controller.increaseQty(theItem),
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      MdiIcons.plusBox,
                      size: 32.0,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 25,
                    child: Center(
                      child: Text(
                        "${theItem["qty"]}",
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => controller.decreaseQty(theItem),
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      MdiIcons.minusBox,
                      size: 32.0,
                    ),
                  ),
                ],
              ),
              // * Quantity Feature #2 : Using ROW but need to set the width
              /* SizedBox(
                          height: 80,
                          width: 120,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () => controller.increaseQty(theItem),
                                padding: EdgeInsets.zero,
                                icon: Icon(
                                  MdiIcons.plusBox,
                                  size: 32.0,
                                ),
                              ),
                              SizedBox(
                                width: 25,
                                child: Text(
                                  "${theItem["qty"]}",
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              IconButton(
                                onPressed: () => controller.decreaseQty(theItem),
                                padding: EdgeInsets.zero,
                                icon: Icon(
                                  MdiIcons.minusBox,
                                  size: 32.0,
                                ),
                              ),
                            ],
                          ),
                        ), */
            ],
          );
        },
      ),
    );
  }
}
