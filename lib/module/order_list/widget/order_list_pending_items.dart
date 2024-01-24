// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import 'package:intl/intl.dart';

class OrderListPendingItems extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  const OrderListPendingItems({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = items[index];

          return InkWell(
            onTap: () => Get.to(OrderDetailView(
              orderItem: item,
            )),
            child: Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey[300]!,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "#${item["id"]}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                            Text(
                              DateFormat('dd MMMM y kk:mm').format(DateTime.parse(item['created_at'])),
                              style: const TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            Text(
                              "${item['payment_method']['name'] ?? '-'}",
                              style: const TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            Text(
                              "${item['courier']['name'] ?? '-'}",
                              style: const TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "\$214",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
        /* return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[200],
              backgroundImage: const NetworkImage(
                "https://i.ibb.co/QrTHd59/woman.jpg",
              ),
            ),
            title: Text(
              "#${item["id"]}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                
              ],
            ),
            trailing: Text(
              "\$${item['total']}",
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ));
      }, */
        );
  }
}
