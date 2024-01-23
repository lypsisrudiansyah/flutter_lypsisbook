import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;
    var mqH = MediaQuery.of(context).size.height;
    var mqW = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 10,
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
                            width: mqW * 0.2,
                          ),
                        ],
                      ),
                      SizedBox(height: mqH * 0.16),
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
                        showPasswordToggle: false,
                        onTogglePasswordVisibility: (value) => print('show password: $value'),
                      ),
                      SizedBox(height: mqH * 0.03),
                      LypsisButtonFW(
                        text: "Login",
                        onPressed: () => Get.offAll(const MainNavigationView()),
                        key: const Key('button-login'),
                      ),
                      SizedBox(height: mqH * 0.03),
                      InkWell(
                        onTap: () => Get.to(const ForgotPasswordView()),
                        child: const Text(
                          "Forgot Password ?",
                          style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: LypsisButtonFW(
                  text: "Sign Up ",
                  color: disabledColor,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterView()));
                  },
                  textColor: disabledTextColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
