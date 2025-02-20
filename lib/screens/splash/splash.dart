import 'package:flutter/material.dart';
import 'package:login_app/components/app_logo.dart';
import 'package:login_app/components/custom_text.dart';
import 'package:login_app/screens/auth/signup.dart';
import 'package:login_app/utils/constants/app_colors.dart';
import 'package:login_app/utils/helpers/page_navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      // delay for 2 seconds and navigate to the signup screen
      const Duration(seconds: 2),
      () {
        PageNavigation.navigateTo(context, const Signup());
      }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppLogo(width: 350.0, height: 300.0,),
            SizedBox(height: 20),
            CustomText(text: "Login App", fontSize: 25.0, fontWeight: FontWeight.w500, color: AppColors.primaryColor,),
          ],
        )),
    );
  }
}



