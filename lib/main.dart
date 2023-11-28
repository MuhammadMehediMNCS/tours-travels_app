import 'package:flutter/material.dart';
import 'package:tours/page/login_page.dart';
import 'package:tours/page/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.white,
        primaryColor:const Color.fromRGBO(21, 30, 61, 1)
      ),
      home: const AuthPage(),
    );
  }
}

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
    ? LoginPage(onClickedSignUp: toggle)
    : SignupPage(onClickedLogin: toggle);

    void toggle() => setState(() => isLogin = !isLogin);
}