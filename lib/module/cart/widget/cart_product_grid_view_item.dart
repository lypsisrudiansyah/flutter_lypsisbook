// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../controller/cart_controller.dart';

class CartProductGridViewItem extends StatelessWidget {
  final Map<String, dynamic> theItem;
  const CartProductGridViewItem({Key? key, required this.theItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = CartController.instance;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  theItem["photo"],
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  6.0,
                ),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 6.0,
                  top: 8.0,
                  child: CircleAvatar(
                    radius: 14.0,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.favorite,
                      color: theItem['is_favorite'] == true ? Colors.red : Colors.black87,
                      size: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          theItem["product_name"],
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 2.0),
        Text(
          theItem["category"],
          style: const TextStyle(
            fontSize: 12.0,
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          "\$${theItem["price"]}",
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
      ],
    );
  }
}
