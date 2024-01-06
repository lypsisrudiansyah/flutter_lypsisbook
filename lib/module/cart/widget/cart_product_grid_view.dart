// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
// import 'package:flutter_lypsisbook/module/cart/controller/cart_controller.dart';
import 'package:flutter_lypsisbook/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CartProductGridView extends StatelessWidget {
  const CartProductGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = CartController.instance;

    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.0 / 1.3,
          crossAxisCount: 2,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
        ),
        itemCount: controller.products.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.products[index];
          return InkWell(
            onTap: () => Get.to(
              ProductDetailView(
                item: item,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          item["photo"],
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
                              color: item['is_favorite'] == true ? Colors.red : Colors.black87,
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
                  item["product_name"],
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2.0),
                Text(
                  item["category"],
                  style: const TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  "\$${item["price"]}",
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
                      onPressed: () => controller.increaseQty(item),
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
                          "${item["qty"]}",
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () => controller.decreaseQty(item),
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        MdiIcons.minusBox,
                        size: 32.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
