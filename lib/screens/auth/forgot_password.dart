import 'package:flutter/material.dart';
import 'package:login_app/components/app_logo.dart';
import 'package:login_app/components/custom_button.dart';
import 'package:login_app/components/custom_text.dart';
import 'package:animate_do/animate_do.dart';
import 'package:login_app/components/custom_textfield.dart';
import 'package:login_app/utils/constants/app_colors.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                  child: const CustomText(text: "Forgot Password", fontSize: 25.0, fontWeight: FontWeight.w600, color: AppColors.primaryColor,)
                ),
                const SizedBox(height: 10.0,),
                FadeInUp(
                  child: const AppLogo(width: 300.0, height: 220.0,)
                ),
                const SizedBox(height: 70.0,),
                const CustomText(text: "Please, enter your email address. You will receive a link to create a new password via email.", fontSize: 14.0,),
                const SizedBox(height: 16.0,),
                const CustomTextfield(hintText: "Enter your email here", labelText: "Email",),
                const SizedBox(height: 68.0,),
                CustomButton(
                  text: "Send",
                  onTap: () {
                    // PageNavigation.navigateTo(context, ForgotPassword());
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



