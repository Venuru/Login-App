import 'package:flutter/material.dart';
import 'package:login_app/components/custom_text.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CustomText(text: "Login Screeen",)),
    );
  }
}