import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import 'package:flutter_lypsisbook/shared/theme_config.dart';
import 'package:flutter_lypsisbook/shared/widget/lypsis_button_fw.dart';
import 'package:flutter_lypsisbook/shared/widget/r_text_field.dart';
import '../controller/register_controller.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  Widget build(context, RegisterController controller) {
    controller.view = this;
    var mqW = MediaQuery.of(context).size.width;
    var mqH = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        centerTitle: true,
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
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: '',
                  // style: DefaultTextStyle.of(context).style,
                  style: TextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'By signing up, you agree to our \n',
                        style: TextStyle(
                          color: disabledColor,
                        )),
                    TextSpan(
                      text: 'Terms',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                    TextSpan(
                        text: ' and ',
                        style: TextStyle(
                          color: disabledColor,
                        )),
                    TextSpan(
                      text: 'Privacy',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "I already have an account",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
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
