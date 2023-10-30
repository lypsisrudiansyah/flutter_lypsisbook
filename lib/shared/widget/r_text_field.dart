import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/shared/theme_config.dart';

class RTextField extends StatelessWidget {
  final String? hintText;
  final Color? hintColor;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmit;

  const RTextField({
    Key? key,
    this.hintText,
    this.hintColor,
    this.onChanged,
    this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: disabledColor),
      child: TextFormField(
        decoration: InputDecoration.collapsed(
          hintText: hintText,
          hintStyle: TextStyle(
            color: hintColor ?? Colors.grey,
          ),
        ),
        onChanged: onChanged,
        onFieldSubmitted: onSubmit,
      ),
    );
  }
}
