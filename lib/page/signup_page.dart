import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tours/widget/text_widget.dart';
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
              const TextWidget(
                text: 'Sign up',
                fontSize: 28,
                color: Colors.white,
              ),
              const SizedBox(height: 8),
              const TextWidget(
                text: 'Create account to arrange picnic for school, college and more',
                fontSize: 12,
                color: Colors.white,
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
                  child: const SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFieldWidget(label: 'User Name'),
                        TextFieldWidget(label: 'Phone'),
                        TextFieldWidget(label: 'Address'),
                        TextFieldWidget(label: 'Gander'),
                        TextFieldWidget(label: 'Password'),
                        TextFieldWidget(label: 'Confirm Password')
                      ],
                    ),
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
                label: const TextWidget(
                  text: 'Sign up',
                  fontSize: 24,
                  color: Color(0xff1E2758),
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
}