import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
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
        child: SizedBox(
          width: mqW,
          child: Column(
            children: [
              Image.asset(
                'assets/images/lypsisbook-480.png',
                width: mqW * 0.16,
              ),
              const SizedBox(height: 20.0),
              RTextField(
                // controller: controller.nameController,
                hintText: "Name",
                onChanged: (value) {},
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
