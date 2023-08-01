import 'package:flutter/material.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/utils/responsive_util.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
  });

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
              fontSize: Responsive.w(18, context),
              color: AppColors.primaryTheme,
              fontFamily: "Poppins"),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryTheme),
          ),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryTheme),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryTheme),
          ),
          disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryTheme),
          )),
    );
  }
}
