import 'package:flutter/material.dart';
import 'package:login_app/components/custom_text.dart';
import 'package:login_app/utils/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.btnWidth = 259.0,
    this.btnHeight = 50.0
  });

  final String text;
  final Function() onTap;
  final double btnWidth;
  final double btnHeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(      
        width: btnWidth,
        height: btnHeight,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: AppColors.ash.withOpacity(0.3),
              offset: const Offset(0, 0),
              blurRadius: 10.0
            )
          ]
        ),
        child: CustomText(
          text: text,
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          color: AppColors.white,
        ),
      ),
    );
  }
}