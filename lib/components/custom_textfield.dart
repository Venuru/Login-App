import 'package:flutter/material.dart';
import 'package:login_app/components/custom_text.dart';
import 'package:login_app/utils/constants/app_colors.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.hintText,
    required this.labelText,
    this.isObscure = false,
    this.textEditingController,
  });

  final String hintText;
  final String labelText;
  final bool isObscure;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.ash.withOpacity(0.3),
            offset: const Offset(0, 0),
            blurRadius: 10
          )
        ]
      ),
      child: TextField(
        obscureText: isObscure,
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hintText,
            hintStyle: const TextStyle(
              color: AppColors.ash
            ),
            label: CustomText(
              text: labelText, 
              color: AppColors.ash,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.0),
              borderSide: const BorderSide(color: Colors.white)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.0),
              borderSide: const BorderSide(color: AppColors.primaryColor)
            )
          ),
      ),
    );
  }
}