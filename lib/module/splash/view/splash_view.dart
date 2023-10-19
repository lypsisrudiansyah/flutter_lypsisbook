
import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import '../controller/splash_controller.dart';

class SplashView extends StatefulWidget {
    const SplashView({Key? key}) : super(key: key);

    Widget build(context, SplashController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Splash"),
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
    State<SplashView> createState() => SplashController();
}
    