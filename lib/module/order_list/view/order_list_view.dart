import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import 'package:flutter_lypsisbook/module/order_list/widget/order_list_delivered_items.dart';
import 'package:flutter_lypsisbook/module/order_list/widget/order_list_pending_items.dart';
import 'package:flutter_lypsisbook/module/order_list/widget/order_list_shipped_items.dart';
import '../controller/order_list_controller.dart';

class OrderListView extends StatefulWidget {
  const OrderListView({Key? key}) : super(key: key);

  Widget build(context, OrderListController controller) {
    controller.view = this;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Pending",
              ),
              Tab(
                text: "Shipped",
              ),
              Tab(
                text: "Delivered",
              ),
            ],
          ),
          title: const Text('Order List'),
        ),
        body: TabBarView(
          children: [
            OrderListPendingItems(items: controller.getOrdersByStatus("Pending")),
            OrderListShippedItems(items: controller.getOrdersByStatus("Shipped")),
            OrderListDeliveredItems(items: controller.getOrdersByStatus("Delivered")),
          ],
        ),
      ),
    );
  }

  @override
  State<OrderListView> createState() => OrderListController();
}
