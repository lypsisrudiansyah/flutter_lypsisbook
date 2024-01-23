import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  Widget build(context, EditProfileController controller) {
    controller.view = this;
    var mqH = MediaQuery.of(context).size.height;
    var mqW = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: mqW,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 64.0,
                backgroundImage: const NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
                child: Stack(
                  children: const [
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: primaryColor,
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30.0),
              RTextField(
                hintText: "Full name",
                hintColor: secondaryColor,
                onChanged: (value) {},
              ),
              const SizedBox(height: 10.0),
              RTextField(
                hintText: "Email",
                hintColor: secondaryColor,
                onChanged: (value) {},
              ),
              const SizedBox(height: 10.0),
              RTextField(
                hintText: "Date of Birth",
                hintColor: secondaryColor,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: LypsisButtonFW(text: "Update", onPressed: () {}),
      ),
    );
  }

  @override
  State<EditProfileView> createState() => EditProfileController();
}
