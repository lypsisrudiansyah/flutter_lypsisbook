
import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import '../view/change_password_view.dart';

class ChangePasswordController extends State<ChangePasswordView> {
    static late ChangePasswordController instance;
    late ChangePasswordView view;

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
        
    