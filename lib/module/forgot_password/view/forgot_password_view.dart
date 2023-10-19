
import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import '../controller/forgot_password_controller.dart';

class ForgotPasswordView extends StatefulWidget {
    const ForgotPasswordView({Key? key}) : super(key: key);

    Widget build(context, ForgotPasswordController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("ForgotPassword"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
            ),
        ),
        ),
    );
    }

    @override
    State<ForgotPasswordView> createState() => ForgotPasswordController();
}
    