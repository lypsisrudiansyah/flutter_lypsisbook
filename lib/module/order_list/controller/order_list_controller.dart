
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
}
        
    