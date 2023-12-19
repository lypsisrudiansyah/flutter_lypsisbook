import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  Widget build(context, ChangePasswordController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ChangePassword"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 10.0),
              RPasswordField(
                hintText: 'Password',
                hintColor: secondaryColor,
                onChanged: (value) {},
                showPasswordToggle: true,
                onTogglePasswordVisibility: (value) => print('show password: $value'),
              ),
              const SizedBox(height: 10.0),
              RPasswordField(
                hintText: 'Repeat Password',
                hintColor: secondaryColor,
                onChanged: (value) {},
                showPasswordToggle: true,
                onTogglePasswordVisibility: (value) => print('show password: $value'),
              ),
              const SizedBox(height: 20.0),
              LypsisButtonFW(text: "Change Password", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ChangePasswordView> createState() => ChangePasswordController();
}
