
import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import '../view/checkout_view.dart';

class CheckoutController extends State<CheckoutView> {
    static late CheckoutController instance;
    late CheckoutView view;

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
        
    