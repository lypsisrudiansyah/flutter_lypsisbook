import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import '../view/order_list_view.dart';

class OrderListController extends State<OrderListView> {
  static late OrderListController instance;
  late OrderListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  List<Map<String, dynamic>> orderList = [
    {
      "id": 1,
      "shipping_address": {
        "name": "John Doe",
        "detail": "123 Main St, Anytown, USA",
      },
      "courier": {
        "name": "FedEx",
        "detail": "Priority Overnight",
      },
      "payment_method": {
        "name": "Credit Card",
        "detail": "Visa **** 1234",
      },
      "status": "Processing",
      "total": 120.95,
      "items": [
        {
          "id": 1,
          "product_name": "Apple iPhone 13",
          "qty": 2,
          "price": 10.0,
        },
        {
          "id": 2,
          "product_name": "Samsung Galaxy S21",
          "qty": 1,
          "price": 20.0,
        },
      ],
    },
    {
      "id": 2,
      "shipping_address": {
        "name": "Alice Smith",
        "detail": "456 Oak St, Sometown, USA",
      },
      "courier": {
        "name": "UPS",
        "detail": "Express Saver",
      },
      "payment_method": {
        "name": "PayPal",
        "detail": "paypal@example.com",
      },
      "status": "Shipped",
      "total": 45.75,
      "items": [
        {
          "id": 3,
          "product_name": "Apple MacBook Pro",
          "qty": 3,
          "price": 15.0,
        },
        {
          "id": 4,
          "product_name": "Dell XPS 15",
          "qty": 2,
          "price": 25.0,
        },
      ],
    },
    {
      "id": 3,
      "shipping_address": {
        "name": "Bob Johnson",
        "detail": "789 Pine St, Anytown, USA",
      },
      "courier": {
        "name": "DHL",
        "detail": "Express Worldwide",
      },
      "payment_method": {
        "name": "MasterCard",
        "detail": "MasterCard **** 5678",
      },
      "status": "Delivered",
      "total": 70.50,
      "items": [
        {
          "id": 5,
          "product_name": "Apple iPad Pro",
          "qty": 1,
          "price": 30.0,
        },
        {
          "id": 6,
          "product_name": "Samsung Galaxy Tab S7",
          "qty": 2,
          "price": 20.0,
        },
      ],
    },
    {
      "id": 4,
      "shipping_address": {
        "name": "Sarah Miller",
        "detail": "1011 Elm St, Anytown, USA",
      },
      "courier": {
        "name": "FedEx",
        "detail": "International Priority",
      },
      "payment_method": {
        "name": "Visa",
        "detail": "Visa **** 9012",
      },
      "status": "Canceled",
      "total": 30.0,
      "items": [
        {
          "id": 7,
          "product_name": "Apple Watch Series 7",
          "qty": 1,
          "price": 15.0,
        },
        {
          "id": 8,
          "product_name": "Samsung Galaxy Watch 4",
          "qty": 1,
          "price": 15.0,
        },
      ],
    },
    {
      "id": 5,
      "shipping_address": {
        "name": "David Anderson",
        "detail": "1213 Maple St, Anytown, USA",
      },
      "courier": {
        "name": "UPS",
        "detail": "Express Saver",
      },
      "payment_method": {
        "name": "American Express",
        "detail": "Amex **** 3456",
      },
      "status": "Processing",
      "total": 85.20,
      "items": [
        {
          "id": 9,
          "product_name": "Apple AirPods Pro",
          "qty": 2,
          "price": 10.0,
        },
        {
          "id": 10,
          "product_name": "Samsung Galaxy Buds Pro",
          "qty": 2,
          "price": 10.0,
        },
      ],
    },
    {
      "id": 6,
      "shipping_address": {
        "name": "Michael Green",
        "detail": "321 Birch St, Townsville, USA",
      },
      "courier": {
        "name": "TNT",
        "detail": "Next Day Delivery",
      },
      "payment_method": {
        "name": "Discover",
        "detail": "Discover **** 4321",
      },
      "status": "Shipped",
      "total": 75.0,
      "items": [
        {
          "id": 11,
          "product_name": "Sony PlayStation 5",
          "qty": 2,
          "price": 25.0,
        },
        {
          "id": 12,
          "product_name": "Microsoft Xbox Series X",
          "qty": 2,
          "price": 20.0,
        },
      ],
    },
    {
      "id": 7,
      "shipping_address": {
        "name": "Laura Taylor",
        "detail": "234 Maple St, Lasttown, USA",
      },
      "courier": {
        "name": "DPD",
        "detail": "Two-Day Delivery",
      },
      "payment_method": {
        "name": "PayPal",
        "detail": "paypal@example.com",
      },
      "status": "Delivered",
      "total": 53.45,
      "items": [
        {
          "id": 13,
          "product_name": "Google Pixel 6",
          "qty": 1,
          "price": 35.0,
        },
        {
          "id": 14,
          "product_name": "OnePlus 9 Pro",
          "qty": 3,
          "price": 18.0,
        },
      ],
    },
  ];
}
