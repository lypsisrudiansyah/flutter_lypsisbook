import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';
import 'package:flutter_lypsisbook/shared/theme_config.dart';
import 'package:flutter_lypsisbook/shared/widget/r_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../shared/widget/lypsis_button_fw.dart';
import '../../../shared/widget/r_password_field.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;
    var mqH = MediaQuery.of(context).size.height;
    var mqW = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome",
                            style: GoogleFonts.roboto(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "to LypsisBook",
                            style: GoogleFonts.roboto(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          const Text(
                            "Make your life easier",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/lypsisbook-480.png',
                      width: mqW * 0.13,
                    ),
                  ],
                ),
                SizedBox(height: mqH * 0.16),
                /* Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: disabledColor),
                  child: TextFormField(
                    decoration: const InputDecoration.collapsed(
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: secondaryColor,
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ), */
                RTextField(
                  hintText: 'Email',
                  hintColor: secondaryColor,
                  onChanged: (value) {},
                ),
                SizedBox(height: mqH * 0.02),
                RPasswordField(
                  hintText: 'Password',
                  hintColor: secondaryColor,
                  onChanged: (value) {},
                  showPasswordToggle: true,
                  onTogglePasswordVisibility: (value) => print('show password: $value'),
                ),
                SizedBox(height: mqH * 0.03),
                LypsisButtonFW(text: "Login", onPressed: () {}),
                SizedBox(height: mqH * 0.03),
                const Text(
                  "Forgot Password ?",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: primaryColor),
                ),
                SizedBox(height: mqH * 0.25),
                LypsisButtonFW(
                  text: "Sign Up ",
                  onPressed: () {},
                  isDisabled: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
