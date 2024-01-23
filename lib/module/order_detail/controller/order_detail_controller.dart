
import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import '../view/order_detail_view.dart';

class OrderDetailController extends State<OrderDetailView> {
    static late OrderDetailController instance;
    late OrderDetailView view;

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
        
    