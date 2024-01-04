import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  Widget build(context, CartController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        actions: const [],
      ),
      body: Container(
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
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(
                      color: primaryColor, // Customize the color for the focused border
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
                      // * FYI this Widget ElevatedButton can be using custom global theme on MainTheme class so if we removing this style it will be using global theme
                      // * you can check product_list_view.dart for example that not customize the style but it is using global theme
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
            const SizedBox(height: 12.0),
            // & Notes : When Using SingleChildScrollView we need to set the ListView when its a child of it, set the shrinkWrap:true, the result whole widget inside SingleChildScrollView will be scrollable
            // & but if you wanna scrolled just on list data, the top position widget is not scrolled(outside the ListView), you can remove the SingleChildScrollView, then using Expanded->ListView->shrinkWrap:false
            Expanded(
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
                              "\$${theItem['price']}" ?? '-',
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey[300]!,
            ),
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Wrap(
          children: [
            Container(
              // decoration: const BoxDecoration(),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Items",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          "4",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // space this betw
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Total",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          "\$${controller.total}",
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 12.0,
            ),
            LypsisButtonFW(text: "Checkout", onPressed: () {}),
          ],
        ),
      ),
    );
  }

  @override
  State<CartView> createState() => CartController();
}
