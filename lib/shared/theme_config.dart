import 'package:flutter/material.dart';

const primaryColor = Color(0xFFC12FFF);
const primaryDarkerColor = Color.fromARGB(255, 179, 2, 255);
const disabledColor = Color(0xFFCDCDCD);
const disabledTextColor = Color(0xFF455154);
const secondaryColor = Color(0xFF969FA2);

class MainTheme {
  static getTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryDarkerColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
