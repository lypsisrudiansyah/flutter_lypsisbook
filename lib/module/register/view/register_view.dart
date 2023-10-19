
import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import '../controller/register_controller.dart';

class RegisterView extends StatefulWidget {
    const RegisterView({Key? key}) : super(key: key);

    Widget build(context, RegisterController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Register"),
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
    State<RegisterView> createState() => RegisterController();
}
    