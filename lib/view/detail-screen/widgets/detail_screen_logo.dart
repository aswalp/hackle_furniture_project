import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/responsive_util.dart';

class BuildLogoIcon extends StatelessWidget {
  const BuildLogoIcon({
    required this.icons,
    required this.val,
    super.key,
  });
  final Icon icons;
  final int val;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffBAD7DA)),
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xffD9D9D9)),
      width: Responsive.w(45, context),
      height: Responsive.h(45, context),
      child: IconButton(
        onPressed: () {
          if (val == 1) {
            Navigator.pop(context);
          }
        },
        icon: Center(
          child: Icon(
            icons.icon,
            size: 25,
            color: AppColors.primaryTheme,
          ),
        ),
      ),
    );
  }
}
