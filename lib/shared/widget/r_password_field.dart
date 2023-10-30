import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/shared/theme_config.dart';

class RPasswordField extends StatefulWidget {
  final String? hintText;
  final Color? hintColor;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmit;
  final bool showPasswordToggle;
  // when need callback after changed the toggle password visibility
  final ValueChanged<bool>? onTogglePasswordVisibility;

  const RPasswordField({
    Key? key,
    this.hintText,
    this.hintColor,
    this.onChanged,
    this.onSubmit,
    this.showPasswordToggle = false,
    this.onTogglePasswordVisibility,
  }) : super(key: key);

  @override
  _RPasswordFieldState createState() => _RPasswordFieldState();
}

class _RPasswordFieldState extends State<RPasswordField> {
  bool _obscureText = true;

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
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: widget.hintColor ?? Colors.grey,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        suffixIcon: widget.showPasswordToggle
            ? InkWell(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                  if (widget.onTogglePasswordVisibility != null) {
                    widget.onTogglePasswordVisibility!(!_obscureText);
                  }
                },
                child: Padding(
                  padding: EdgeInsets.zero,
                  child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    size: 15.0,
                    color: widget.hintColor ?? Colors.grey,
                  ),
                ),
              )
            : null,
      ),
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onSubmit,
      obscureText: widget.showPasswordToggle ? _obscureText : false,
      validator: (value) {
        if (widget.showPasswordToggle && value!.isEmpty) {
          return "Password is required";
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
