import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tours/page/drawer_menu_page.dart';
import 'package:tours/widget/text_widget.dart';
import 'package:tours/widget/textfield_widget.dart';

class SignupPage extends StatefulWidget {
  final Function() onClickedLogin;

  const SignupPage({super.key, required this.onClickedLogin});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  
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
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: const Column(
                        children: [
                          TextFieldWidget(label: 'User Name', isRequired: true),
                          TextFieldWidget(label: 'Phone', isRequired: true),
                          TextFieldWidget(label: 'Address', isRequired: true),
                          TextFieldWidget(label: 'Gander', isRequired: true),
                          TextFieldWidget(label: 'Password', isRequired: true),
                          TextFieldWidget(label: 'Confirm Password', isRequired: true)
                        ],
                      ),
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
                onPressed: () {
                  final form = _formKey.currentState;
                  if(form!.validate()) {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const DrawerMenuPage()), (route) => false);
                  }
                },
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