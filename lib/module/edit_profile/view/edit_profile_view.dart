
import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import '../controller/edit_profile_controller.dart';

class EditProfileView extends StatefulWidget {
    const EditProfileView({Key? key}) : super(key: key);

    Widget build(context, EditProfileController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("EditProfile"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
            ),
        ),
        ),
    );
    }

    @override
    State<EditProfileView> createState() => EditProfileController();
}
    