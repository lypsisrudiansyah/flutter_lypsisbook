import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  Widget build(context, ForgotPasswordController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ForgotPassword"),
        actions: const [],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              RTextField(
                hintText: 'Email',
                hintColor: secondaryColor,
                onChanged: (value) {},
              ),
              const SizedBox(height: 20.0),
              LypsisButtonFW(text: "Forgot Password", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ForgotPasswordView> createState() => ForgotPasswordController();
}
