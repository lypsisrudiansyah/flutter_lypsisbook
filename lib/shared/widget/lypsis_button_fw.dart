// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/shared/theme_config.dart';

class LypsisButtonFW extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final bool isDisabled;

  const LypsisButtonFW({Key? key, required this.text, required this.onPressed, this.color, this.isDisabled = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: (color ?? primaryColor),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
        ),
        onPressed: isDisabled == false ? onPressed : null,
        child: Text(text),
      ),
    );
  }
}
