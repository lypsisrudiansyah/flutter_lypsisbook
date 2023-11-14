
import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import '../view/product_detail_view.dart';

class ProductDetailController extends State<ProductDetailView> {
    static late ProductDetailController instance;
    late ProductDetailView view;

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
        
    