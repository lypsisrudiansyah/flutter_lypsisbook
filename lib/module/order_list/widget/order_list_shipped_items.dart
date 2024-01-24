// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderListShippedItems extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  const OrderListShippedItems({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      physics: const ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        var item = items[index];

        return Container(
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
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          DateFormat('dd MMMM y kk:mm').format(DateTime.parse(item['created_at'])),
                          style: const TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                        Text(
                          "${item['payment_method']['name'] ?? '-'}",
                          style: const TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                        Text(
                          "${item['courier']['name'] ?? '-'}",
                          style: const TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "\$213",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
