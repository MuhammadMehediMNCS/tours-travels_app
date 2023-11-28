import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tours/widget/textfield_widget.dart';

class SignupPage extends StatefulWidget {
  final Function() onClickedLogin;

  const SignupPage({super.key, required this.onClickedLogin});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildText(
                'Sign up',
                28,
                Colors.white
              ),
              const SizedBox(height: 8),
              buildText(
                'Create account to arrange picnic for school, college and more',
                12, 
                Colors.white
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 460,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: const Column(
                    children: [
                      TextFieldWidget(label: 'User Name'),
                      TextFieldWidget(label: 'Email'),
                      TextFieldWidget(label: 'Phone'),
                      TextFieldWidget(label: 'Password'),
                      TextFieldWidget(label: 'Confirm Password')
                    ],
                  )
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: const Size(250, 48)
                ),
                icon: const Icon(Icons.arrow_forward, size: 32, color: Color(0xff1E2758)),
                label: buildText(
                  'Sign up',
                  24,
                  const Color(0xff1E2758)
                ),
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontFamily: 'Exo2',
                    fontSize: 18,
                    color: Colors.white
                  ),
                  text: 'Already have an account? ',
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = widget.onClickedLogin,
                      text: 'Login',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Theme.of(context).colorScheme.secondary
                      )
                    )
                  ]
                )
              )
            ],
          ),
        )
      ),
    );
  }

  Widget buildText(String text, double fontSize, Color color) => Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontFamily: 'Exo2',
      fontSize: fontSize,
      color: color
    ),
  );
}