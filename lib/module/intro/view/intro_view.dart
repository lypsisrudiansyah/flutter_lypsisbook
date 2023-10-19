
import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import '../controller/intro_controller.dart';

class IntroView extends StatefulWidget {
    const IntroView({Key? key}) : super(key: key);

    Widget build(context, IntroController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Intro"),
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
    State<IntroView> createState() => IntroController();
}
    