import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;
    var mqH = MediaQuery.of(context).size.height;
    var mqW = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: const [],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: mqW,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 64.0,
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
              const SizedBox(height: 4.0),
              const Text(
                "Rudiansyah",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4.0),
              const Text(
                "Software Engineer at Xyz",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text("OTHER INFORMATION"),
              ),
              ListView.builder(
                itemCount: controller.menuItems.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var itemMenu = controller.menuItems[index];

                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(itemMenu['label']),
                    trailing: const Icon(
                      Icons.chevron_right,
                      size: 24.0,
                    ),
                    onTap: () => Get.to(itemMenu['view']),
                  );
                },
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
