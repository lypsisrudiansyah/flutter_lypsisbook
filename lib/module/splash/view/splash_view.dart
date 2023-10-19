import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_lypsisbook/core.dart';
import '../controller/splash_controller.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  Widget build(context, SplashController controller) {
    controller.view = this;

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Splash"),
      //   actions: const [],
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/lypsisbook-320.png",
              width: 120.0,
              height: 120.0,
              fit: BoxFit.fill,
            ),
          ).animate().shake(
                duration: const Duration(
                  milliseconds: 1000,
                ),
              ),
        ],
      ),
    );
  }

  @override
  State<SplashView> createState() => SplashController();
}
