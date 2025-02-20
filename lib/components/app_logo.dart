import 'package:flutter/material.dart';
import 'package:login_app/utils/constants/app_assets.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    this.width = 280.0,
    this.height = 200.0
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.getImage("logo.jpeg"),
      width: width,
      height: height,
      fit: BoxFit.fill,
    );
  }
}