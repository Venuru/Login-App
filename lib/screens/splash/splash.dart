import 'package:flutter/material.dart';
import 'package:login_app/components/custom_text.dart';
import 'package:login_app/screens/main/home/home.dart';
import 'package:login_app/utils/constants/app_assets.dart';
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
        PageNavigation.navigateTo(context, const Home());
      }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.getImage("logo.jpeg"),
              width: 350.0,
              height: 300.0,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 20),
            const CustomText(text: "Login App", fontSize: 25.0, fontWeight: FontWeight.w500, color: AppColors.primaryColour,),
          ],
        )),
    );
  }
}

