import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import 'package:flutter_lypsisbook/shared/widget/lypsis_button_fw.dart';
import 'package:flutter_lypsisbook/shared/widget/r_text_field.dart';
import '../controller/register_controller.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  Widget build(context, RegisterController controller) {
    controller.view = this;
    var mqW = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: mqW,
          margin: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/lypsisbook-480.png',
                width: mqW * 0.16,
              ),
              const SizedBox(height: 20.0),
              RTextField(
                hintText: "Full Name",
                onChanged: (value) {},
              ),
              const SizedBox(height: 20.0),
              RTextField(
                hintText: "Email",
                onChanged: (value) {},
              ),
              const SizedBox(height: 20.0),
              RTextField(
                hintText: "Password",
                onChanged: (value) {},
              ),
              const SizedBox(height: 20.0),
              LypsisButtonFW(text: "Create an Account", onPressed: () {}),
              const SizedBox(height: 20.0),
              RichText(
                text: TextSpan(
                  text: '',
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Hello',
                    ),
                    TextSpan(
                      text: 'World',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<RegisterView> createState() => RegisterController();
}
