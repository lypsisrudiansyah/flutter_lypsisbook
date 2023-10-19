
import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import '../view/register_view.dart';

class RegisterController extends State<RegisterView> {
    static late RegisterController instance;
    late RegisterView view;

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
        
    