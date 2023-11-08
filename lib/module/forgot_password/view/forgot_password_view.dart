import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import 'package:flutter_lypsisbook/shared/theme_config.dart';
import 'package:flutter_lypsisbook/shared/widget/lypsis_button_fw.dart';
import 'package:flutter_lypsisbook/shared/widget/r_text_field.dart';
import '../controller/forgot_password_controller.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  Widget build(context, ForgotPasswordController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
