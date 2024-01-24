// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CheckoutOption extends StatelessWidget {
  final String title;
  final String subtitle1;
  final String? subtitle2;
  bool? dividerHide = false;
  CheckoutOption({Key? key, required this.title, required this.subtitle1, this.subtitle2, this.dividerHide}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 4.0,
              ),
              Text(subtitle1),
              if (subtitle2 != null) Text(subtitle2!)
            ],
          ),
          trailing: const Icon(
            Icons.chevron_right,
            size: 24.0,
          ),
        ),
        dividerHide == true ? const SizedBox() : const Divider(height: 1),
      ],
    );
  }
}
