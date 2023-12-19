import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lypsisbook/core.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  Widget build(context, RegisterController controller) {
    controller.view = this;
    var mqW = MediaQuery.of(context).size.width;
    var mqH = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: mqW,
          margin: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/lypsisbook-480.png',
                width: mqW * 0.20,
              ),
              const SizedBox(height: 20.0),
              RTextField(
                hintText: "Full Name",
                onChanged: (value) {},
              ),
              const SizedBox(height: 20.0),
              RTextField(
                hintText: "Email",
                onChanged: (value) {},
              ),
              const SizedBox(height: 20.0),
              RPasswordField(
                hintText: 'Password',
                hintColor: secondaryColor,
                onChanged: (value) {},
                showPasswordToggle: true,
                onTogglePasswordVisibility: (value) => print('show password: $value'),
              ),
              const SizedBox(height: 20.0),
              LypsisButtonFW(text: "Create an Account", onPressed: () {}),
              const SizedBox(height: 20.0),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: '',
                  // style: DefaultTextStyle.of(context).style,
                  style: const TextStyle(),
                  children: <TextSpan>[
                    const TextSpan(
                        text: 'By signing up, you agree to our \n',
                        style: TextStyle(
                          color: disabledColor,
                        )),
                    const TextSpan(
                      text: 'Terms',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                    const TextSpan(
                        text: ' and ',
                        style: TextStyle(
                          color: disabledColor,
                        )),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // print('Privacy');
                        },
                      text: 'Privacy',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
      // & Notes : We can also make button aligned to bottom when on Scrollable Widget, using Stack and Positioned The button will be always at the bottom of the screen.
      // & Notes 2 : Idea to using LayoutBuilder as parent singleChildScrollView, to get the height of the screen, and then we can use it to make the button always at the bottom of the screen.
      // & Notes 3 : Next Idea is Column [Scrollable, Flexible/Expanded 80% -> Button 20%]
      bottomNavigationBar: Container(
        width: mqW,
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => Get.to(const LoginView()),
              child: const Text(
                "I already have an account",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<RegisterView> createState() => RegisterController();
}
