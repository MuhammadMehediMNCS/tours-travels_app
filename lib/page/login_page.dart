import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tours/page/drawer_menu_page.dart';
import 'package:tours/widget/text_widget.dart';
import 'package:tours/widget/textfield_widget.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback onClickedSignUp;

  const LoginPage({super.key, required this.onClickedSignUp});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                text: 'Welcome to our Tour\nPlan Apps',
                fontSize: 24,
                color: Colors.white,
              ),
              const SizedBox(height: 12),
              const TextWidget(
                text: 'If you want to have a picnic inside Rajshahi division then crate an account and check the picnic spots',
                fontSize: 12,
                color: Colors.white,
              ),
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Form(
                    key: _formKey,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFieldWidget(label: 'Email', isRequired: true),
                        TextFieldWidget(label: 'Password', isRequired: true)
                      ],
                    ),
                  )
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: const Size(250,48) //Size.fromHeight(50)
                ),
                icon: const Icon(Icons.lock_open, size: 30, color: Color(0xff1E2758)),
                label: const TextWidget(
                  text: 'Login',
                  fontSize: 24,
                  color: Color(0xff1E2758),
                ),
                onPressed: () {
                  final form = _formKey.currentState;

                  if(form!.validate()) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const DrawerMenuPage()));
                  }
                },
              ),
              const SizedBox(height: 14),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontFamily: 'Exo2',
                    fontSize: 16,
                    color: Colors.white
                  ),
                  text: "Don't have an account? ",
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = widget.onClickedSignUp,
                      text: 'Create Account',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Theme.of(context).colorScheme.secondary
                      )
                    )
                  ]
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}