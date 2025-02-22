import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/components/app_logo.dart';
import 'package:login_app/components/custom_button.dart';
import 'package:login_app/components/custom_text.dart';
import 'package:animate_do/animate_do.dart';
import 'package:login_app/components/custom_textfield.dart';
import 'package:login_app/screens/auth/forgot_password.dart';
import 'package:login_app/utils/constants/app_assets.dart';
import 'package:login_app/utils/constants/app_colors.dart';
import 'package:login_app/utils/helpers/page_navigation.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  child: const CustomText(text: "Login", fontSize: 25.0, fontWeight: FontWeight.w600, color: AppColors.primaryColor,)
                ),
                const SizedBox(height: 10.0,),
                FadeInUp(
                  child: const AppLogo(width: 300.0, height: 220.0,)
                ),
                const SizedBox(height: 10.0,),
                const CustomTextfield(hintText: "Enter your email here", labelText: "Email",),
                const SizedBox(height: 10.0,),
                const CustomTextfield(hintText: "fORGOT your password?", labelText: "Password", isObscure: true,),
                const SizedBox(height: 16.0,),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      PageNavigation.navigateTo(context, const Login());
                    },
                    child: InkWell(
                      onTap: () {
                        PageNavigation.navigateTo(context, const ForgotPassword());
                      },
                      child: const CustomText(
                        text: "Forgot your password?"
                      )
                    )
                  )
                ),
                const SizedBox(height: 25.0,),
                CustomButton(
                  text: "Login", 
                  onTap: () {
                    PageNavigation.navigateTo(context, Login());
                  },
                ),
                const SizedBox(height: 23.0,),
                const CustomText(text: "Or login with social account"),
                const SizedBox(height: 12.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(iconName: "google.svg", onTap: () {},),
                    const SizedBox(width: 16.0,),
                    SocialButton(iconName: "facebook.svg", onTap: () {},),
                  ],
                )
              ],


            ),
          ),
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.iconName,
    required this.onTap
  });

  final String iconName;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 92.0,
        height: 64.0,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(24.0),
          boxShadow: [BoxShadow(
            color: AppColors.ash.withOpacity(0.3),
            offset: const Offset(0, 0),
            blurRadius: 10.0
          )]
        ),
        child: SvgPicture.asset(
          AppAssets.getIcon(iconName)),
      ),
    );
  }
}



