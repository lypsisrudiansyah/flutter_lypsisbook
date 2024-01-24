import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';

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
                            child: Text("Sort By"),
                          ),
                          Icon(
                            Icons.sort,
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
                            child: Text("Filter"),
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
                const SizedBox(width: 6.0),
                IconButton(
                  onPressed: () => controller.toggleGridMode(),
                  icon: Icon(
                    controller.itemsCartGridMode == true ? Icons.grid_on_outlined : Icons.list,
                    size: 24.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12.0),
            // & Notes : When Using SingleChildScrollView we need to set the ListView when its a child of it, set the shrinkWrap:true, the result whole widget inside SingleChildScrollView will be scrollable
            // & but if you wanna scrolled just on list data, the top position widget is not scrolled(outside the ListView), you can remove the SingleChildScrollView, then using Expanded->ListView->shrinkWrap:false
            if (controller.itemsCartGridMode == false)
              Expanded(
                child: ListView.builder(
                  itemCount: controller.products.length,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    final Map<String, dynamic> theItem = controller.products[index];
                    return CartProductListViewItem(theItem: theItem);
                  },
                ),
              ),

            if (controller.itemsCartGridMode == true)
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.0 / 1.5,
                    crossAxisCount: 2,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 6,
                  ),
                  itemCount: controller.products.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    Map<String, dynamic> theItem = controller.products[index];
                    return CartProductGridViewItem(theItem: theItem);
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
                  SizedBox(
                    width: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Items",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          "${controller.products.length}",
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Total(Qty)",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          "${controller.totalQty}",
                          style: const TextStyle(
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
            LypsisButtonFW(text: "Checkout", onPressed: () => Get.to(const CheckoutView())),
          ],
        ),
      ),
    );
  }

  @override
  State<CartView> createState() => CartController();
}
