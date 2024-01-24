import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';

class OrderDetailView extends StatefulWidget {
  final Map<String, dynamic> orderItem;
  const OrderDetailView({Key? key, required this.orderItem}) : super(key: key);

  Widget build(context, OrderDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Cart Items",
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            /* ListView.builder(
              shrinkWrap: true,
              itemCount: cartController.products.length,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                var item = cartController.products[index];
                double total = (item["price"] * item["qty"]).toDouble();
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    backgroundImage: NetworkImage(item['photo']),
                  ),
                  title: Text(
                    item["product_name"],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("QTY : ${item['qty']}  Price: \$${item['price']}"),
                  trailing: Text("\$$total"),
                );
              },
            ), */
            CheckoutOption(
              title: "Shipping Address",
              subtitle1: "Adi Sucipto Street, Sungai Raya",
              subtitle2: "Kubu Raya, Indonesia",
            ),
            CheckoutOption(
              title: "Shipping Method",
              subtitle1: "Akoa Express, 1 weeks for \$1.5",
            ),
            CheckoutOption(
              title: "Payment",
              subtitle1: "Mastercard *** 0896",
            ),
            CheckoutOption(
              title: "Promo Code",
              subtitle1: "Weekend Happy Code",
              dividerHide: true,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 1,
              color: Colors.grey[400]!,
            ),
          ),
        ),
        child: Wrap(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Subtotal: \$100",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        "Shipping: \$5",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        "Tax: 10%",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        "Promocode: 50% off",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "total",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        "\$109.44",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(height: 10.0),
            LypsisButtonFW(
              text: "Place Order",
              onPressed: () {
                // Get.to(const OrderSuccessView());
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<OrderDetailView> createState() => OrderDetailController();
}
