import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListTile(
                title: const Text("Change Password"),
                trailing: const Icon(
                  Icons.chevron_right,
                  size: 24.0,
                ),
                onTap: () => Get.to(const ChangePasswordView()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
