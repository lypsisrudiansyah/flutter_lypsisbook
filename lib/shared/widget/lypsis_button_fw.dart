// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/shared/theme_config.dart';

class LypsisButtonFW extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;
  final bool isDisabled;

  const LypsisButtonFW({Key? key, required this.text, required this.onPressed, this.color, this.isDisabled = false, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .05,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor ?? Colors.white,
          backgroundColor: (color ?? primaryColor),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          // textStyle: TextStyle(color: textColor ?? Colors.white),
        ),
        onPressed: isDisabled == false ? onPressed : null,
        child: Text(text),
      ),
    );
  }
}
