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
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: disabledColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: hintColor ?? Colors.grey,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      ),
      onChanged: onChanged,
      onFieldSubmitted: onSubmit,
    );
  }
}
