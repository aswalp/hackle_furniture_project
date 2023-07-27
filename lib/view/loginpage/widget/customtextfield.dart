
import 'package:flutter/material.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';

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
          hintStyle: const TextStyle(
              fontSize: 18,
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
