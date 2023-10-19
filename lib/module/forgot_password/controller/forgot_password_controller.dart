
import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import '../view/forgot_password_view.dart';

class ForgotPasswordController extends State<ForgotPasswordView> {
    static late ForgotPasswordController instance;
    late ForgotPasswordView view;

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
        
    