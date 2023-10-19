import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import 'package:flutter_lypsisbook/state_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        useMaterial3: true,
        // This id.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // home: const SplashView(),
      home: const IntroView(),
    );
  }
}
