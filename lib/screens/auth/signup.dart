import 'package:flutter/material.dart';
import 'package:login_app/components/app_logo.dart';
import 'package:login_app/components/custom_button.dart';
import 'package:login_app/components/custom_text.dart';
import 'package:animate_do/animate_do.dart';
import 'package:login_app/components/custom_textfield.dart';
import 'package:login_app/screens/auth/login.dart';
import 'package:login_app/utils/constants/app_colors.dart';
import 'package:login_app/utils/helpers/page_navigation.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 60.0,),
                FadeInDown(
                  child: const CustomText(text: "SignUp", fontSize: 25.0, fontWeight: FontWeight.w600, color: AppColors.primaryColor,)
                ),
                const SizedBox(height: 10.0,),
                FadeInUp(
                  child: const AppLogo(width: 300.0, height: 220.0,)
                ),
                const SizedBox(height: 10.0,),
                const CustomTextfield(hintText: "Enter your name here", labelText: "Name",),
                const SizedBox(height: 10.0,),
                const CustomTextfield(hintText: "Enter your email here", labelText: "Email",),
                const SizedBox(height: 10.0,),
                const CustomTextfield(hintText: "Enter your password here", labelText: "Password", isObscure: true,),
                const SizedBox(height: 16.0,),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      PageNavigation.navigateTo(context, const Login());
                    },
                    child: const CustomText(text: "Already have an account?"))
                ),
                const SizedBox(height: 25.0,),
                CustomButton(
                  text: "SignUp",
                  onTap: () {
                    PageNavigation.navigateTo(context, Login());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



